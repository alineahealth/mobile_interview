import 'package:dio/dio.dart';

class ApiClientFactory {
  static Dio create() {
    final dio = Dio();
    dio.options.baseUrl =
        "https://www.omdbapi.com/?i=tt3896198&apikey=63f3e527";
    return dio;
  }
}

/* API REQUESTS 
Search(s=): Retrieves you all possible options.
Title(t=): A movie title.
ID(i=): a valid IMDB ID (e.g. tt1234567).
 */