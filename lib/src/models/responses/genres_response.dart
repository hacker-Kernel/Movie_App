import 'package:movie_app/src/models/genres_model.dart';

class GenreResponse {
  final List<Gerne> gerne;
  final String error;

  GenreResponse(this.gerne, this.error);

  GenreResponse.fromJson(Map<String, dynamic> json)
      : gerne = (json['result'] as List).map((e) => Gerne.fromJson(e)).toList(),
        error = '';

  GenreResponse.withError(String errorValue)
      : gerne = [],
        error = errorValue;
}
