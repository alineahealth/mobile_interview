import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../data.dart';

class MoviesRepository {
  final Dio client;
  MoviesRepository({required this.client});

  Future<Either<String, List<MovieModel>>> fetchByText(String text) async {
    try {
      final result = await client.get("&s=$text");
      var movies = <MovieModel>[];
      if (result.data["Response"] == "True" && result.data["Search"] != null) {
        for (var item in result.data["Search"]) {
          var movie = MovieModel.fromJson(item);
          movies.add(movie);
        }
        return Right(movies);
      } else if (result.data["Response"] == "True") {
        var movie = MovieModel.fromJson(result.data);
        movies.add(movie);
        return Right(movies);
      } else {
        return Left(result.data["Error"]);
      }
    } on DioError catch (e) {
      return Left(e.message);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
