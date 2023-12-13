import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movies,
    required this.index,
  });

  final Map<String, dynamic>? movies;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.all(10),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                movies!['posterUrl'].toString(),
                fit: BoxFit.fitWidth,
                scale: 2.5,
              ),
            ),
            Text(
              movies!['title'].toString(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      color: Colors.red,
                      size: 16,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "${movies!['runtime'].toString()} min",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  movies!['year'].toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
