import 'package:cinema_app/data/Film.dart';
import 'package:cinema_app/widgets/MAppBar.dart';
import 'package:cinema_app/widgets/MFilmCardList.dart';
import 'package:cinema_app/widgets/MMenuBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final films = <Film>[
    Film(
        'assets/film_1.jpeg',
        'Тоска (пряма трансляція)',
        'Tosca',
        16,
        'Девід Маквікар',
        '11.04.2020',
        'Італійська мова з англійськими субтитрами',
        'Опера, Театр',
        '3:07',
        'США',
        'The Metropolitan Opera',
        'Анна Нетребко, Брайан Джагд, Міхаель Фолле, Патрік Карфіцці',
        '11.05.2020'),
    Film(
        'assets/film_2.jpeg',
        'Секрет',
        'The Secret: Dare to Dream',
        16,
        'Енді Теннант',
        '16.04.2020',
        'Українська мова',
        'Драма',
        '1:38',
        'США',
        'Lionsgate, Roadside Attractions',
        'Kеті Голмс Джош Лукас Джеррі О’Коннелл Селія Вестон',
        '11.05.2020'),
    Film(
        'assets/film_3.jpeg',
        'Агент Лев',
        'Le lion',
        16,
        'Людовик Кольбо-Жюстен',
        '16.04.2020',
        'Українська мова',
        'Комедія',
        '1:35',
        'Франція, Бельгія',
        'Monkey Pack Films, TF1 Studio, Pathé',
        'Дені Бун, Філіп Катрін, Енні Серра, Софі Вербек, Кароль Брана',
        '11.05.2020'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      body: MFilmCardList(films),
      drawer: MMenuBar(),
    );
  }
}
