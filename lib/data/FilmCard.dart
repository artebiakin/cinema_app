import 'package:cinema_app/data/DefaultCard.dart';
import 'package:cinema_app/data/Film.dart';

class FilmCard extends DefaultCard {
  final String title;
  final Film _film;
  FilmCard(Film film)
      : title = film.nameLocal,
        _film = film,
        super(film.cover);

  Film getFilm() {
    return _film;
  }
}
