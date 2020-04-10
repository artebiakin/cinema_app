import 'package:cinema_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(HelloWorldApp());

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Color.fromRGBO(255, 0, 0, 1),
        textTheme: TextTheme(title: TextStyle(color: Colors.white)),
      ),
      home: HomeScreen(),
    );
  }
}
