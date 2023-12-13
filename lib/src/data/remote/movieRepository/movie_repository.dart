import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_app/src/models/movie_response.dart';

class MovieRepository {
  final String apiKey = "063802a0ce85006fb965ddccddda69ec";
  static String mainUrl = "https://api.themoviedb.org/3";
  final Dio _dio = Dio();
  var getPopularUrl = "$mainUrl/movie/top_reted";
  var getMoviesUrl = "$mainUrl/discover/movie";
  var getPlayingUrl = "$mainUrl/movie/now_playing";
  var getGenresUrl = "$mainUrl/genre/movie/list";
  var getPersonsUrl = "$mainUrl/trending/person/week";

  Future<MovieResponse> getMovies() async {
    var parms = {
      'apiKey': apiKey,
      'language': 'en-US',
      'page:': 1,
    };
    try {
      Response response = await _dio.get(getPopularUrl, queryParameters: parms);
      if (response.statusCode == 200) {
        log(response.data.toString());
        return MovieResponse.fromJson(response.data);
      } else {
        throw Exception("Error Occured");
      }
    } catch (error) {
      print("Exception Occured :: $error");
      return MovieResponse.withError(error.toString());
    }
  }
}
