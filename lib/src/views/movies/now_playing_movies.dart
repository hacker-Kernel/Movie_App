import 'package:flutter/material.dart';

import 'package:movie_app/src/bloc/get_now_playing_movies.dart';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:movie_app/src/widget/sliding_page_view.dart';

class NowPlayingMovies extends StatefulWidget {
  const NowPlayingMovies({super.key});

  @override
  State<NowPlayingMovies> createState() => _NowPlayingMoviesState();
}

class _NowPlayingMoviesState extends State<NowPlayingMovies> {
  @override
  void initState() {
    super.initState();
    nowPlayingMoviesBloc.getNowPlayingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MovieResponse>(
      stream: nowPlayingMoviesBloc.subject.stream,
      builder: (context, AsyncSnapshot<MovieResponse> snapshot) {
        if (snapshot.hasData) {
          return _buildNowPlayingMovies(snapshot.data!);
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

  Widget _buildNowPlayingMovies(MovieResponse data) {
    List<Movie> movies = data.movies;
    if (movies.isEmpty) {
      return const Center(
        child: Text("No Movies"),
      );
    } else {
      return SlidingPageView(data: data.movies);
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
