import 'package:movie_app/src/data/repos/movie_repository.dart';
import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:rxdart/subjects.dart';

class MoviesBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<MovieResponse> _subject =
      BehaviorSubject<MovieResponse>();
  getMovies() async {
    MovieResponse movieResponse = await _repository.getMovies();
    _subject.sink.add(movieResponse);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<MovieResponse> get subject => _subject;
}

final moviesBloc = MoviesBloc();
