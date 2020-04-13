import 'package:cinema_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(HelloWorldApp());

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
