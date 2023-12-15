import 'package:movie_app/src/models/genres_model.dart';

class GenreResponse {
  final List<Genre> gerne;
  final String error;

  GenreResponse(this.gerne, this.error);

  GenreResponse.fromJson(Map<String, dynamic> json)
      : gerne = (json['genres'] as List).map((e) => Genre.fromJson(e)).toList(),
        error = '';

  GenreResponse.withError(String errorValue)
      : gerne = [],
        error = errorValue;
}
