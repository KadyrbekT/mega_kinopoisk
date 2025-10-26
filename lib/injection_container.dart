import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'features/movie_search/data/data_sources/movie_remote_data_source.dart';
import 'features/movie_search/data/data_sources/person_remote_data_source_impl.dart';
import 'features/movie_search/data/repositories/movie_repository_impl.dart';
import 'features/movie_search/data/repositories/person_repository_impl.dart';
import 'features/movie_search/domain/repositpries/movie_repository.dart';
import 'features/movie_search/domain/repositpries/person_repository.dart';
import 'features/movie_search/domain/usecases/get_person.dart';
import 'features/movie_search/domain/usecases/search_movies.dart';
import 'features/movie_search/domain/usecases/search_persons.dart';

class DIContainer {
  late final http.Client _client;
  late final String _baseUrl;
  late final Map<String, String> _headers;

  late final MovieRemoteDataSourceImpl movieRemote;
  late final MovieRepository movieRepository;
  late final SearchMovies searchMovies;

  late final PersonRemoteDataSourceImpl personRemote;
  late final PersonRepository personRepository;
  late final SearchPersons searchPersons;
  late final GetPerson getPerson;

  DIContainer._();

  static final instance = DIContainer._();

  Future<void> init() async {
    _client = http.Client();

    final apiKey = dotenv.env['KINOKOISK_API_KEY'];
    if (apiKey == null || apiKey.isEmpty) {
      throw Exception('Не найден KINOKOISK');
    }

    _baseUrl = 'https://api.kinopoisk.dev/v1.4';
    _headers = {
      'X-API-KEY': apiKey,
      'Content-Type': 'application/json',
    };

    movieRemote = MovieRemoteDataSourceImpl(
      client: _client,
      baseUrl: _baseUrl,
      defaultHeaders: _headers,
    );

    movieRepository = MovieRepositoryImpl(movieRemote: movieRemote);
    searchMovies = SearchMovies(movieRepository);

    personRemote = PersonRemoteDataSourceImpl(
      client: _client,
      baseUrl: _baseUrl,
      defaultHeaders: _headers,
    );

    personRepository = PersonRepositoryImpl(remote: personRemote);
    searchPersons = SearchPersons(personRepository);
    getPerson = GetPerson(personRepository);
  }
}
