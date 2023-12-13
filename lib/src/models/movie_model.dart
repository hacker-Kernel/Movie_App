class Movie {
  final int id;
  final String title;
  final String year;
  final String runtime;
  final List<String> genres;
  final String director;
  final String actors;
  final String plot;
  final String posterUrl;

  Movie(
    this.id,
    this.title,
    this.year,
    this.runtime,
    this.genres,
    this.director,
    this.actors,
    this.plot,
    this.posterUrl,
  );

  Movie.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        year = json["year"],
        runtime = json["runtime"],
        genres = List<String>.from(json["genres"]),
        director = json["director"],
        actors = json["actors"],
        plot = json["plot"],
        posterUrl = json["posterUrl"];

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "title": title,
      "year": year,
      "runtime": runtime,
      "genres": genres,
      "director": director,
      "actors": actors,
      "plot": plot,
      "posterUrl": posterUrl,
    };
  }
}
