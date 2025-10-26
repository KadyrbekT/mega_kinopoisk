import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/search_movies/movie_search_bloc.dart';
import '../widgets/movie_card.dart';
import '../widgets/search_field.dart';
import '../widgets/shimmer_loader.dart';

class MovieSearchPage extends StatelessWidget {
  const MovieSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎬 Поиск фильмов')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SearchField(),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<MovieSearchBloc, MovieSearchState>(
                builder: (context, state) {
                  if (state is MovieSearchStateInitial) {
                    return const Center(
                        child: Text('Введите фильм для поиска'));
                  } else if (state is MovieSearchStateLoading) {
                    return const ShimmerLoader();
                  } else if (state is MovieSearchStateEmpty) {
                    return const Center(child: Text('Введите название фильма'));
                  } else if (state is MovieSearchStateNoResults) {
                    return const Center(child: Text('Фильмы не найдены'));
                  } else if (state is MovieSearchStateLoaded) {
                    final movies = state.results;
                    return ListView.builder(
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        final movie = movies[index];
                        return MovieCard(movie: movie);
                      },
                    );
                  } else if (state is MovieSearchStateError) {
                    return Center(child: Text('Ошибка: ${state.message}'));
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
