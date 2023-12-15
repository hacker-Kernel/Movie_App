import 'package:flutter/material.dart';
import 'package:movie_app/src/bloc/get_movie_by_genres_bloc.dart';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:movie_app/src/widget/movies/movie_card.dart';

class GenreMovies extends StatefulWidget {
  final int genreId;
  const GenreMovies({super.key, required this.genreId});

  @override
  State<GenreMovies> createState() => _GenreMoviesState(genreId);
}

class _GenreMoviesState extends State<GenreMovies> {
  _GenreMoviesState(this.genreId);
  final int genreId;

  @override
  void initState() {
    super.initState();
    moviesByGenresBloc.getMoviesByGenres(genreId);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MovieResponse>(
      stream: moviesByGenresBloc.subject.stream,
      builder: (context, AsyncSnapshot<MovieResponse> snapshot) {
        if (snapshot.hasData) {
          return _buildMoviesByGenres(snapshot.data!);
        } else if (snapshot.hasError) {
          return _buildErrorWidget(snapshot.error.toString());
        } else {
          return _buildLoadingWidget();
        }
      },
    );
  }

  Widget _buildErrorWidget(String error) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Error occured: $error"),
      ],
    ));
  }

  Widget _buildMoviesByGenres(MovieResponse data) {
    List<Movie> movies = data.movies;
    if (movies.isEmpty) {
      return const Center(
        child: Text("No Movies"),
      );
    } else {
      return MovieCard(movies: data.movies);
    }
  }

  Widget _buildLoadingWidget() {
    return SizedBox(
      height: 50,
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
