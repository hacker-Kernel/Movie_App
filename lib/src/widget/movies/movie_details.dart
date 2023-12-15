import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/src/models/movie_model.dart';
import 'package:movie_app/src/widget/image/cached_image.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails({super.key, required this.movies, required this.index});
  final List<Movie> movies;
  final int index;
  @override
  State<MovieDetails> createState() => _MovieDetailsState(movies, index);
}

class _MovieDetailsState extends State<MovieDetails> {
  final List<Movie> movies;
  final int index;
  _MovieDetailsState(this.movies, this.index);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "http://image.tmdb.org/t/p/original/${movies[index].backPoster}",
              fit: BoxFit.fitWidth,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              ),
              errorWidget: (context, url, error) => Center(
                child: Image.network(
                  "https://www.prokerala.com/movies/assets/img/no-poster-available.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              width: size.width,
              height: 230,
              alignment: Alignment.center,
              color: Colors.black.withOpacity(0.5),
              child: Text(
                movies[index].title,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                ),
              ),
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(top: 200),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: CustomCachedNetworkImage(
                            url:
                                'http://image.tmdb.org/t/p/original/${movies[index].poster}',
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              movies[index].title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            Text(
                              movies[index].popularity.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                            Text(
                              movies[index].rating.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    movies[index].overview,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
