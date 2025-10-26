import 'package:dio/dio.dart';
import '../utils/env.dart';
import '../constants/api_constants.dart';

class DioClient {
  final Dio dio;

  DioClient()
      : dio = Dio(BaseOptions(
          baseUrl: ApiConstants.baseUrl,
          headers: {'X-API-KEY': Env.kinopoiskToken},
        ));
}
