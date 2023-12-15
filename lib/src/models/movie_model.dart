class Movie {
  final int id;
  final double popularity;
  final String title;
  final String backPoster;
  final String poster;
  final String overview;
  final double rating;

  Movie(
    this.id,
    this.title,
    this.popularity,
    this.backPoster,
    this.poster,
    this.overview,
    this.rating,
  );

  Movie.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        popularity = json["popularity"].toDouble(),
        backPoster =
            json["backdrop_path"] ?? "/f1AQhx6ZfGhPZFTVKgxG91PhEYc.jpg",
        poster = json['poster_path'],
        overview = json["overview"],
        rating = json["vote_average"].toDouble();
}
