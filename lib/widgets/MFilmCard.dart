import 'package:cinema_app/data/Film.dart';
import 'package:cinema_app/screens/FilmScreen.dart';
import 'package:flutter/material.dart';
import 'package:cinema_app/data/FilmCard.dart';

class MFilmCard extends StatefulWidget {
  final String cover;
  final String title;
  final Film film;

  MFilmCard(FilmCard card)
      : cover = card.cover,
        title = card.title,
        film = card.getFilm();

  @override
  _MFilmCard createState() => _MFilmCard(title, cover, film);
}

class _MFilmCard extends State<MFilmCard> {
  final String cover;
  final String title;
  final Film film;

  bool isFavorite = false;
  _MFilmCard(this.title, this.cover, this.film);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _routing(),
      child: Container(
        height: 250,
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[_drawFavoriteButton(), _drawTextArea()],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            alignment: Alignment(0.5, -0.4),
            image: AssetImage(cover),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _drawFavoriteButton() {
    return InkWell(
        onTap: () => _toggleFavorite(),
        child: Row(
          children: <Widget>[
            Icon(
              (isFavorite ? Icons.favorite : Icons.favorite_border),
              color: Colors.white,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.end,
        ));
  }

  Widget _drawTextArea() {
    return Flexible(
      child: Row(
        children: <Widget>[
          Flexible(
              child: Text(
            title,
            style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.1),
          ))
        ],
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  void _routing() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FilmScreen(film)),
    );
  }
}
