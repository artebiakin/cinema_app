import 'package:cinema_app/data/DefaultCard.dart';
import 'package:cinema_app/data/Film.dart';

class FilmCard extends DefaultCard {
  final String title;
  FilmCard(Film film)
      : title = film.nameLocal,
        super(film.cover);
}
