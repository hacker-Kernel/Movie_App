import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:movie_app/src/utils/json/movies.dart';
import 'package:rxdart/subjects.dart';

class MoviesBloc {
  final BehaviorSubject<MovieResponse> _subject =
      BehaviorSubject<MovieResponse>();
  getMovies() async {
    var movieDetail = AppMovies.movies;
    for (var movie in movieDetail) {
      MovieResponse movieResponse = MovieResponse.fromJson(movie);
      _subject.sink.add(movieResponse);
    }
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<MovieResponse> get subject => _subject;
}

final subjectBloc = MoviesBloc();
