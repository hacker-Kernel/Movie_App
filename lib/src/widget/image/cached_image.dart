import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({super.key, required this.url});

  final String url;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
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
    );
  }
}
