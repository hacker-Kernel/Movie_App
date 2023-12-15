import 'package:flutter/material.dart';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/utils/extension/navigator_extension.dart';
import 'package:movie_app/src/widget/image/cached_image.dart';

class SpecificSectionOfGenresMovies extends StatelessWidget {
  final List<Movie> movies;
  final String title;
  final int id;
  const SpecificSectionOfGenresMovies({
    super.key,
    required this.movies,
    required this.title,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                context.navigateToMoviesByGenres(genreId: id);
              },
              child: Text(
                'See all',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 226,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.navigateToMovieDetails(
                    movies: movies,
                    index: index,
                  );
                },
                child: Container(
                  width: size.width / 4,
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: CustomCachedNetworkImage(
                          url:
                              "http://image.tmdb.org/t/p/original/${movies[index].poster}",
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
          ),
        ),
      ],
    );
  }
}
