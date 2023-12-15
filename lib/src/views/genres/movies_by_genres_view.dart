import 'package:flutter/material.dart';
import 'package:movie_app/src/bloc/get_movie_by_genres_bloc.dart';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:movie_app/src/views/genres/in_grid_view_movies.dart';

class MoviesByGenres extends StatefulWidget {
  const MoviesByGenres({
    super.key,
    required this.genreId,
  });

  final int genreId;

  @override
  State<MoviesByGenres> createState() => _MoviesByGenresState();
}

class _MoviesByGenresState extends State<MoviesByGenres> {
  @override
  void initState() {
    super.initState();
    moviesByGenresBloc.getMoviesByGenres(widget.genreId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: StreamBuilder<MovieResponse>(
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
        ),
      ),
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
    return MovieCardInGrid(movies: movies);
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
