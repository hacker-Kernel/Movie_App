import 'package:flutter/material.dart';
import 'package:movie_app/src/bloc/get_movie_bloc.dart';
import 'package:movie_app/src/bloc/get_movie_by_genres_bloc.dart';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:movie_app/src/utils/extension/navigator_extension.dart';
import 'package:movie_app/src/widget/image/cached_image.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({
    super.key,
    required this.movies,
  });

  final List<Movie> movies;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  void initState() {
    super.initState();
    moviesBloc.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: const BoxDecoration(),
      child: StreamBuilder(
        stream: moviesByGenresBloc.subject.stream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return _buildMoviesByGenres(snapshot.data!);
          } else if (snapshot.hasError) {
            return _buildErrorWidget(snapshot.error.toString());
          } else {
            return _buildLoadingWidget();
          }
        },
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
    final size = MediaQuery.of(context).size;
    List<Movie> movies = data.movies;
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            context.navigateToMovieDetails(movies: movies, index: index);
          },
          child: Container(
            width: size.width / 4,
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CustomCachedNetworkImage(
                      url:
                          "http://image.tmdb.org/t/p/original/${movies[index].poster}",
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  movies[index].title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Row(
                  children: [
                    Text(
                      movies[index].popularity.toString(),
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.yellow.shade600,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      movies[index].rating.toString(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
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
