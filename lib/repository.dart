import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:mobile_test/models/movie.dart';

class Repository {
  final dio = Dio()
    ..options.headers = {
      Headers.contentTypeHeader: Headers.jsonContentType,
      Headers.acceptHeader: Headers.jsonContentType,
      HttpHeaders.acceptEncodingHeader: 'gzip',
    };

  final log = Logger();

  Future<List<Movie>> getMovies() async {
    const url =
        'https://api.themoviedb.org/3/movie/now_playing?api_key=df44aabf39ca1b52f3ba3b1512396fdd&language=es&page=1';

    final response = await dio.get(url);
    List<Movie> list = [];
    response.data['results'].forEach((movie) {
      final dataTemp = Movie.fromJson(movie);
      list.add(dataTemp);
    });
    return list;
  }
}
