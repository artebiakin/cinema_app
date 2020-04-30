import 'package:cinema_app/widgets/MAppBar.dart';
import 'package:cinema_app/widgets/MBuy.dart';
import 'package:cinema_app/widgets/MLabels.dart';
import 'package:cinema_app/widgets/MScenePlaces.dart';
import 'package:cinema_app/widgets/MScreen.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  final String time;
  final int row = 11;
  final int column = 21;

  const OrderScreen(this.time);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MAppBar(time, false),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                MScreen(),
                Container(
                  margin: EdgeInsets.only(top: 45, bottom: 15),
                  child: MScenePlaces(row, column),
                ),
                MLabels(),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: MBuy(),
            )
          ],
        ));
  }
}
