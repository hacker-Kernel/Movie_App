import 'package:flutter/material.dart';
import 'package:movie_app/src/data/repos/movie_repository.dart';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:movie_app/src/views/genres/specific_section_of_genres.dart';

class SpecificSectionView extends StatefulWidget {
  final int genreId;
  final String title;
  const SpecificSectionView({
    super.key,
    required this.genreId,
    required this.title,
  });

  @override
  State<SpecificSectionView> createState() => _SpecificSectionViewState();
}

class _SpecificSectionViewState extends State<SpecificSectionView> {
  late Future<MovieResponse> _movies;

  @override
  void initState() {
    super.initState();
    _movies = MovieRepository().getMoviesByGenres(widget.genreId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<MovieResponse>(
      future: _movies,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return _buildLoadingWidget();
        } else if (snapshot.hasError) {
          return _buildErrorWidget(snapshot.error.toString());
        } else {
          MovieResponse movies = snapshot.data!;
          return _buildMoviesByGenres(movies);
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
    return SpecificSectionOfGenresMovies(
      movies: movies,
      title: widget.title,
      id: widget.genreId,
    );
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
