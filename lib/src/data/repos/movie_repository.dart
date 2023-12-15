// ignore_for_file: avoid_print
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_app/src/models/responses/genres_response.dart';
import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:movie_app/src/models/responses/person_response.dart';

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
      'api_key': apiKey,
      'language': 'en_US',
      'page': 1,
    };
    try {
      Response response = await _dio.get(getMoviesUrl, queryParameters: parms);
      return MovieResponse.fromJson(response.data);
    } catch (error) {
      print("Exception Occured Get Movies :: $error");
      return MovieResponse.withError(error.toString());
    }
  }

  Future<MovieResponse> getNowPlayingMovies() async {
    var parms = {
      'api_key': apiKey,
      'language': 'en_US',
      'page': 1,
    };

    try {
      Response response = await _dio.get(getPlayingUrl, queryParameters: parms);
      if (response.statusCode == 200) {
        return MovieResponse.fromJson(response.data);
      } else {
        throw Exception("Error");
      }
    } catch (error) {
      print("Get Movies by gernes error :: $error");
      return MovieResponse.withError(error.toString());
    }
  }

  Future<GenreResponse> getGenre() async {
    var parms = {
      'api_key': apiKey,
      'language': 'en-US',
      'page': 1,
    };
    try {
      Response response = await _dio.get(getGenresUrl, queryParameters: parms);
      log("Get Genres :: ${response.data['genres']}");
      return GenreResponse.fromJson(response.data);
    } catch (error) {
      print("Exception Occured Get Genres ::  $error");
      return GenreResponse.withError(error.toString());
    }
  }

  Future<PersonResponse> getPersons() async {
    var parms = {
      'api_key': apiKey,
    };
    try {
      Response response = await _dio.get(getPersonsUrl, queryParameters: parms);
      if (response.statusCode == 200) {
        return PersonResponse.fromJson(response.data);
      } else {
        throw Exception("Error Occured Get Person :: ");
      }
    } catch (error) {
      print("Exception Occured Get Person ::  $error");
      return PersonResponse.withError(error.toString());
    }
  }

  Future<MovieResponse> getMoviesByGenres(int id) async {
    var parms = {
      'api_key': apiKey,
      'language': 'en-US',
      'page': 1,
      "with_genres": id,
    };
    try {
      Response response = await _dio.get(getMoviesUrl, queryParameters: parms);

      if (response.statusCode == 200) {
        return MovieResponse.fromJson(response.data);
      } else {
        throw Exception("Error Occured getMoviesByGenres :: ");
      }
    } catch (error) {
      print("Exception Occured getMoviesByGenres :: $error");
      return MovieResponse.withError(error.toString());
    }
  }
}
