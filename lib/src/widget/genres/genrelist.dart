import 'package:flutter/material.dart';
import 'package:movie_app/src/models/genres_model.dart';
import 'package:movie_app/src/views/movies/genre_movies.dart';

class GenresList extends StatefulWidget {
  const GenresList({super.key, required this.genres});
  final List<Genre> genres;

  @override
  State<GenresList> createState() => _GenresListState(genres);
}

class _GenresListState extends State<GenresList>
    with SingleTickerProviderStateMixin {
  final List<Genre> genres;
  late TabController _tabController;

  _GenresListState(this.genres);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: genres.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: genres.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3.0,
            unselectedLabelColor: Theme.of(context).colorScheme.primary,
            labelColor: Colors.red,
            isScrollable: true,
            tabs: genres.map((Genre genre) {
              return Container(
                padding: const EdgeInsets.only(bottom: 15.0, top: 10.0),
                child: Text(
                  genre.name.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 244,
            child: TabBarView(
              controller: _tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: genres.map(
                (Genre genre) {
                  return GenreMovies(genreId: genre.id);
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
