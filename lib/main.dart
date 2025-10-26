import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'features/movie_search/data/models/movie_models/movie_dto.dart';
import 'features/movie_search/presentation/bloc/search_movies/movie_search_bloc.dart';
import 'features/movie_search/presentation/pages/movie_search_page.dart';
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await DIContainer.instance.init();

  final movies = <MovieDto>[
    MovieDto(id: 1, name: 'Человек-паук'),
    MovieDto(id: 2, name: 'Бэтмен'),
  ];

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '🎬 Поиск фильмов',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) =>
            MovieSearchBloc(searchMovies: DIContainer.instance.searchMovies),
        child: const MovieSearchPage(),
      ),
    );
  }
}
