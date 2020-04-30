import 'package:cinema_app/data/FilmCard.dart';
import 'package:flutter/widgets.dart';
import 'package:cinema_app/data/Film.dart';

import 'MFilmCard.dart';

class MFilmCardList extends StatelessWidget {
  final List<Film> films;
  MFilmCardList(this.films);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: films.length,
          itemBuilder: (context, i) {
            return MFilmCard(FilmCard(films[i]));
          }),
    );
  }
}
