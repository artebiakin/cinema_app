import 'package:cinema_app/data/Film.dart';
import 'package:cinema_app/widgets/MMIBDRating.dart';
import 'package:flutter/material.dart';

import '../globalVariables.dart';

class FilmScreen extends StatelessWidget {
  final Film film;

  const FilmScreen(this.film);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: MFilmAppBar(film.nameLocal),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(
              top: heightAppBarTransition, bottom: heightAppBarTransition / 2),
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  MFilmCover(film.cover),
                  MMIBDRating(film.ratingMIBD),
                  MFilmDescription(this.film)
                ],
              ),
            )
          ],
        ));
  }
}

class MFilmAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  MFilmAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
      elevation: 0,
      flexibleSpace: Container(
        height: heightAppBarTransition,
        color: Theme.of(context).accentColor,
      ),
      title: Text(title),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Icon(Icons.share),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar);
}

class MFilmCover extends StatelessWidget {
  final String cover;

  const MFilmCover(this.cover);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: MediaQuery.of(context).size.height * .3,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(cover),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}

class MFilmDescription extends StatelessWidget {
  static TextStyle fontSmallGray = TextStyle(
      fontWeight: FontWeight.w600, color: Colors.black54, fontSize: 16);
  static TextStyle fontH3 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  final Film film;

  const MFilmDescription(this.film);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(film.nameLocal,
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold))
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 14),
            child: Row(
              children: <Widget>[
                Text(
                  '${_parseForamatDate(film.duration)} | ${film.genre}',
                  style: fontSmallGray,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    film.description,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          _drawSmallDescription('Оригінальна назва', film.nameOrigin),
          _drawSmallDescription('Дата виходу в прокат', film.releaseDate),
          _drawSmallDescription('Режисер', film.director),
          _drawSmallDescription('Мова', film.language),
          _drawSmallDescription('Вік', film.age.toString()),
          _drawSmallDescription('Країна', film.production),
          _drawSmallDescription('Актори', film.starring),
        ],
      ),
    ));
  }

  String _parseForamatDate(String time) {
    List array = time.split(':');
    return '${array[0]}г ${array[1]}хв';
  }

  Widget _drawSmallDescription(String title, String description) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              title,
              style: fontSmallGray,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            children: <Widget>[
              Flexible(
                child: Text(
                  description,
                  style: fontH3,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
