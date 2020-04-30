import 'package:cinema_app/redux/AppState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../globalVariables.dart';

class MBuy extends StatefulWidget {
  @override
  _MBuyState createState() => _MBuyState();
}

class _MBuyState extends State<MBuy> {
  final double ticketPrice = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.all(15),
        child: StoreConnector<AppState, int>(
          converter: (store) => store.state.counter,
          builder: (context, counter) {
            return Column(children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Усього: ${ticketPrice * counter} грн.',
                  style: fontH3,
                ),
              ),
              GestureDetector(
                onTap: () => counter != 0 ? _toBuy() : null,
                child: Container(
                  alignment: Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                      color: accentColor.withAlpha(counter != 0.0 ? 255 : 150),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Придбати',
                    textAlign: TextAlign.center,
                    style: fontH3.merge(TextStyle(color: Colors.white)),
                  ),
                  width: 250,
                  height: 50,
                ),
              )
            ]);
          },
        ),
      ),
    );
  }

  void _toBuy() {
    // final store = StoreProvider.of<AppState>(context);

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //       builder: (context) =>
    //           PayScreen(value: (ticketPrice * store.state.counter))),
    // );
  }
}
