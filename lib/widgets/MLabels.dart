import 'package:flutter/material.dart';
import '../globalVariables.dart';

class MLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: <Widget>[
                Oval(Colors.blue),
                Text(
                  '60 грн',
                  style: fontH3,
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 15,
            children: <Widget>[
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Oval(Colors.grey),
                  Text('Місце зайняте', style: fontP),
                ],
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Oval(Theme.of(context).accentColor),
                  Text('Ваш вибір', style: fontP),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Oval extends StatelessWidget {
  final Color color;

  const Oval(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(10),
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            color: color,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
