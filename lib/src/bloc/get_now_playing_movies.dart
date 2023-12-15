import 'package:movie_app/src/data/repos/movie_repository.dart';
import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:rxdart/subjects.dart';

class NowPlayingMoviesBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<MovieResponse> _subject =
      BehaviorSubject<MovieResponse>();

  getNowPlayingMovies() async {
    MovieResponse movieResponse = await _repository.getNowPlayingMovies();
    _subject.sink.add(movieResponse);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<MovieResponse> get subject => _subject;
}

final nowPlayingMoviesBloc = NowPlayingMoviesBloc();
