import 'package:cinema_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(CinemaApp());

class CinemaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //or set color with: Color(0xFF0000FF)
    ));
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: const Color.fromRGBO(255, 0, 0, 1),
        textTheme: const TextTheme(title: const TextStyle(color: Colors.white)),
      ),
      home: HomeScreen(),
    );
  }
}
