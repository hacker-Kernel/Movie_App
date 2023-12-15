import 'package:flutter/material.dart';
import 'package:movie_app/src/models/movie_model.dart';

class SlidingPageView extends StatelessWidget {
  const SlidingPageView({
    super.key,
    required this.data,
  });

  final List<Movie> data;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: data.length,
      padEnds: false,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.all(12),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: const Color.fromARGB(255, 255, 69, 56).withOpacity(0.5),
            )
          ],
          image: DecorationImage(
            image: NetworkImage(
              "http://image.tmdb.org/t/p/original/${data[index].backPoster}",
            ),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            opacity: 0.8,
          ),
        ),
        child: Text(
          data[index].title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
              ),
        ),
      ),
    );
  }
}
