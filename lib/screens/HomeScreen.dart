import 'package:cinema_app/widgets/MAppBar.dart';
import 'package:cinema_app/widgets/MMenuBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      body: Text('I am text'),
      drawer: MMenuBar(),
    );
  }
}
