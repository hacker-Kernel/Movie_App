import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/views/genres/movies_by_genres_view.dart';
import 'package:movie_app/src/widget/movies/movie_details.dart';

extension NavigationExtensions on BuildContext {
  void navigateToMoviesByGenres({required int genreId}) {
    Get.to(MoviesByGenres(genreId: genreId));
  }
}

extension MovieNavigationExtensions on BuildContext {
  void navigateToMovieDetails(
      {required List<Movie> movies, required int index}) {
    Get.to(MovieDetails(movies: movies, index: index));
  }
}
