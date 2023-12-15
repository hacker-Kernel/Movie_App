import 'package:flutter/material.dart';
import 'package:movie_app/src/data/repos/movie_repository.dart';
import 'package:movie_app/src/models/responses/movie_response.dart';
import 'package:rxdart/subjects.dart';

class SpecificGenreBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<MovieResponse> _subject =
      BehaviorSubject<MovieResponse>();
  getSpecificMoviesByGenres(int id) async {
    MovieResponse movieResponse = await _repository.getMoviesByGenres(id);
    _subject.sink.add(movieResponse);
  }

  void drainStream() {
    _subject.value;
  }

  @mustCallSuper
  void dispose() async {
    await _subject.drain();
    _subject.close();
  }

  BehaviorSubject<MovieResponse> get subject => _subject;
}

final specificGenreBloc = SpecificGenreBloc();
