// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movie_app/src/config/controllers/home_controller.dart';
import 'package:movie_app/src/config/theme/theme_config.dart';
import 'package:movie_app/src/utils/extension/navigator_extension.dart';
import 'package:movie_app/src/utils/json/movies.dart';
import 'package:movie_app/src/views/dashboard.dart/dashboard.dart';

import 'widget/search_bar/custom_search_delegate.dart';

class MovieApp extends StatefulWidget {
  const MovieApp({super.key});

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  final HomeController _controller = Get.put(HomeController());

  var movieDetails = [];

  @override
  void initState() {
    setMovieTitles();
    super.initState();
  }

  setMovieTitles() {
    setState(() {
      movieDetails.addAll(AppMovies.movies);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        width: size.width - 70,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 127, 118),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                        ),
                        radius: 36,
                      ),
                      const Spacer(),
                      Obx(
                        () => Switch(
                          value:
                              _controller.currentTheme.value == ThemeMode.dark,
                          onChanged: (value) {
                            _controller.switchTheme();
                            Get.changeThemeMode(_controller.currentTheme.value);
                          },
                          activeColor: CustomTheme.white,
                        ),
                      ),
                      // IconButton(
                      //     onPressed: () {}, icon: const Icon(Icons.dark_mode))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Aakash",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  Text(
                    "example@gmail.com",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Action'),
              onTap: () {
                context.navigateToMoviesByGenres(genreId: 28);
              },
            ),
            ListTile(
              title: const Text('Adventure'),
              onTap: () {
                context.navigateToMoviesByGenres(genreId: 12);
              },
            ),
            ListTile(
              title: const Text('Animation'),
              onTap: () {
                context.navigateToMoviesByGenres(genreId: 16);
              },
            ),
            ListTile(
              title: const Text('Comedy'),
              onTap: () {
                context.navigateToMoviesByGenres(genreId: 35);
              },
            ),
            ListTile(
              title: const Text('Crime'),
              onTap: () {
                context.navigateToMoviesByGenres(genreId: 80);
              },
            ),
            ListTile(
              title: const Text('Fantasy'),
              onTap: () {
                context.navigateToMoviesByGenres(genreId: 14);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 5,
        toolbarHeight: 96,
        shadowColor: Colors.red,
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        scrolledUnderElevation: 5,
        title: Row(
          children: [
            Text(
              "Movie App",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () => showSearch(
                context: context,
                delegate: CustomSearchDelegate(movieDetails),
              ),
              icon: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
              ),
            ),
          ],
        ),
      ),
      body: const SafeArea(
        maintainBottomViewPadding: true,
        child: Dashboard(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
