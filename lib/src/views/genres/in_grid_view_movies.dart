import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/src/models/movie_model.dart';

class MovieCardInGrid extends StatelessWidget {
  const MovieCardInGrid({super.key, required this.movies});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios_new_rounded)),
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.5,
            ),
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: CachedNetworkImage(
                          imageUrl:
                              'http://image.tmdb.org/t/p/original/${movies[index].poster}',
                          fit: BoxFit.cover,
                          height: 20,
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
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      movies[index].title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
