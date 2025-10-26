import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/search_movies/movie_search_bloc.dart';

class SearchField extends StatelessWidget {
  final controller = TextEditingController();

  SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Введите название фильма...',
        hintStyle: TextStyle(color: Colors.black),
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: Colors.deepPurpleAccent,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onSubmitted: (query) {
        context.read<MovieSearchBloc>().add(MovieSearchQueryChanged(query));
      },
    );
  }
}
