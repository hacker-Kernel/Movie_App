import 'package:movie_app/src/data/repos/movie_repository.dart';
import 'package:movie_app/src/models/responses/genres_response.dart';
import 'package:rxdart/subjects.dart';

class GenreBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<GenreResponse> _subject =
      BehaviorSubject<GenreResponse>();
  getGenres() async {
    GenreResponse genreResponse = await _repository.getGenre();
    _subject.sink.add(genreResponse);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<GenreResponse> get subject => _subject;
}

final genreBloc = GenreBloc();
