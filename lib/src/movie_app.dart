// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:movie_app/src/utils/json/movies.dart';
import 'package:movie_app/src/views/dashboard.dart/dashboard.dart';

import 'widget/search_bar/custom_search_delegate.dart';

class MovieApp extends StatefulWidget {
  const MovieApp({super.key});

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
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
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.dark_mode))
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
              title: const Text('Hollywood'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('bollywood'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Tollywood'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 5,
        toolbarHeight: 96,
        shadowColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        scrolledUnderElevation: 5,
        title: Row(
          children: [
            Text(
              "Movie App",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const Spacer(),
            IconButton(
              onPressed: () => showSearch(
                context: context,
                delegate: CustomSearchDelegate(movieDetails),
              ),
              icon: const Icon(
                Icons.search,
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
}
