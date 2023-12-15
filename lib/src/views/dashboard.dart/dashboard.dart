import 'package:flutter/material.dart';
import 'package:movie_app/src/views/genres/specific_section_view.dart';
import 'package:movie_app/src/views/movies/genres.dart';
import 'package:movie_app/src/views/movies/now_playing_movies.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    List<int> id = [12, 16, 35, 80, 99, 18, 10751, 14, 36, 27];
    List<String> genre = [
      "Adventure",
      "Animation",
      "Comedy",
      "Crime",
      "Documentary",
      "Drama",
      "Family",
      "Fantasy",
      "History",
      "TV Movie",
    ];
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "This Week",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: size.width - 180,
                child: const NowPlayingMovies(),
              ),
              const Genres(),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: id.length,
                itemBuilder: (context, index) => SpecificSectionView(
                    genreId: id[index], title: genre[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
