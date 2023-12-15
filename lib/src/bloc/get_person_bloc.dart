import 'package:movie_app/src/data/repos/movie_repository.dart';
import 'package:movie_app/src/models/responses/person_response.dart';
import 'package:rxdart/subjects.dart';

class PersonBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<PersonResponse> _subject =
      BehaviorSubject<PersonResponse>();
  getMovies() async {
    PersonResponse personResponse = await _repository.getPersons();
    _subject.sink.add(personResponse);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<PersonResponse> get subject => _subject;
}

final personBloc = PersonBloc();
