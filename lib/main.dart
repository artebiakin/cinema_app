import 'package:cinema_app/redux/AppState.dart';
import 'package:cinema_app/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final store = new Store<AppState>(reducer, initialState: AppState(0));

  runApp(CinemaApp(
    store: store,
  ));
}

class CinemaApp extends StatelessWidget {
  final Store<AppState> store;

  CinemaApp({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light,
            accentColor: const Color.fromRGBO(255, 0, 0, 1),
            textTheme:
                const TextTheme(title: const TextStyle(color: Colors.white)),
          ),
          home: HomeScreen(),
        ));
  }
}
