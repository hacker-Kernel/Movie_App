import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/src/data/remote/movieRepository/movie_repository.dart';
import 'package:movie_app/src/models/movie_response.dart';
import 'package:movie_app/src/utils/json/movies.dart';
import 'package:movie_app/src/widget/movies/movie_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List? genres = [];
  int selectGenres = 0;
  int selectedSliderIndex = 0;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  CarouselController carouselController = CarouselController();
  List<dynamic> movies = [];

  allGenres() async {
    MovieResponse movieResponse = await MovieRepository().getMovies();
    setState(() {
      genres = AppMovies.genres;
      log(movieResponse.movies.toString());
    });
  }

  @override
  void initState() {
    allGenres();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(
                height: 56,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: genres!.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => movieSelect(index),
                    child: genresList(
                      index: index,
                      selectGenres: selectGenres,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "This Week",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 5),
              ListView(
                shrinkWrap: true,
                children: [
                  CarouselSlider(
                    items: [
                      SliderMovieCard(
                          index: 0, selectedSliderIndex: selectedSliderIndex),
                      SliderMovieCard(
                          index: 1, selectedSliderIndex: selectedSliderIndex),
                      SliderMovieCard(
                          index: 2, selectedSliderIndex: selectedSliderIndex),
                      SliderMovieCard(
                          index: 3, selectedSliderIndex: selectedSliderIndex),
                      SliderMovieCard(
                          index: 4, selectedSliderIndex: selectedSliderIndex),
                    ],
                    carouselController: carouselController,
                    options: CarouselOptions(
                        aspectRatio: 16 / 7.2,
                        autoPlay: true,
                        enableInfiniteScroll: false,
                        onPageChanged: (index, reason) {
                          setState(() {
                            selectedSliderIndex = index;
                          });
                        }),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              AnimatedSmoothIndicator(
                activeIndex: selectedSliderIndex,
                count: 5,
                effect: const WormEffect(
                  activeDotColor: Colors.red,
                  dotHeight: 12,
                  dotWidth: 18,
                  radius: 23,
                  // strokeWidth: 10,
                  spacing: 10,
                  dotColor: Color.fromARGB(255, 49, 49, 49),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Latest Movies",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.red),
                  ),
                ],
              ),
              SizedBox(
                height: 290,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: AppMovies.movies.length,
                  itemBuilder: (context, index) => MovieCard(
                    movies: AppMovies.movies[index],
                    index: index,
                  ),
                ),
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Action Movies",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.red),
                  ),
                ],
              ),
              // const SizedBox(height: 5),
              SizedBox(
                height: 290,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: AppMovies.movies.length,
                  itemBuilder: (context, index) {
                    List<String> gn = AppMovies.movies[index]['genres'];
                    if (gn.contains('Adventure')) {
                      return MovieCard(
                        movies: AppMovies.movies[index],
                        index: index,
                      );
                    } else {
                      return const Visibility(child: Text(""));
                    }
                    // return null;
                  },
                ),
              ),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Drama",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.red),
                  ),
                ],
              ),
              // const SizedBox(height: 5),
              SizedBox(
                height: 290,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: AppMovies.movies.length,
                  itemBuilder: (context, index) {
                    List<String> gn = AppMovies.movies[index]['genres'];
                    if (gn.contains('Drama')) {
                      return MovieCard(
                        movies: AppMovies.movies[index],
                        index: index,
                      );
                    } else {
                      return const Visibility(child: Text(""));
                    }
                    // return null;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget genresList({
    required int index,
    required int selectGenres,
  }) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: selectGenres == index
            ? Colors.red
            : Theme.of(context).colorScheme.secondary,
        border: Border.all(
          width: 1,
          color: selectGenres == index
              ? Colors.white
              : Theme.of(context).colorScheme.primary,
        ),
      ),
      child: Text(
        genres![index],
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: selectGenres == index
                  ? Colors.white
                  : Theme.of(context).colorScheme.primary,
            ),
      ),
    );
  }

  void movieSelect(int index) {
    setState(() {
      selectGenres = index;
    });
  }
}

class SliderMovieCard extends StatelessWidget {
  const SliderMovieCard({
    super.key,
    required this.index,
    required this.selectedSliderIndex,
  });
  final int index;
  final int selectedSliderIndex;

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/war-movie-poster-template-design-8a827e55c714a03ed2a554da291d625d_screen.jpg?ts=1602569332",
      "https://wallpapers.com/images/hd/shang-chi-official-movie-poster-kgiycfo4zeh71c5c.jpg",
      "https://pbs.twimg.com/media/D4pgj_BVUAAbCTd.jpg:large",
      "https://wallpapersmug.com/download/1600x900/cce793/movie-poster-of-john-wick-3.jpg",
      "https://wallpapersmug.com/download/1600x900/526278/justice-league-fan-art-poster-4k-8k.jpg",
    ];
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: selectedSliderIndex == index
              ? [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 0.3,
                    color:
                        const Color.fromARGB(255, 243, 80, 80).withOpacity(0.8),
                    offset: const Offset(3, 4),
                  ),
                ]
              : [],
          image: DecorationImage(
            image: NetworkImage(
              image[index],
            ),
            opacity: selectedSliderIndex == index ? 1 : 0.3,
            fit: BoxFit.cover,
            onError: (exception, stackTrace) => const Text('😥'),
          ),
        ),
      ),
    );
  }
}
