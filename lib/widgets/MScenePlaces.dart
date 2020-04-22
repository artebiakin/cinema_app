import 'dart:math';

import 'package:flutter/material.dart';

class MPlace extends StatefulWidget {
  final int id;
  final int numberPlace;
  final bool isAvailable;
  const MPlace(this.id, this.numberPlace, this.isAvailable);

  @override
  _MPlaceState createState() => _MPlaceState(id, numberPlace, isAvailable);
}

class _MPlaceState extends State<MPlace> {
  static Color colorAvailable = Colors.blue;
  static Color colorUnavailable = Colors.black45;
  static Color colorSelect = Colors.red;
  static TextStyle textStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16);
  final int id;
  final int numberPlace;
  final bool isAvailable;
  bool _isSelect = false;

  _MPlaceState(this.id, this.numberPlace, this.isAvailable);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isAvailable ? _toggleColor(id) : null,
      child: Container(
          margin: EdgeInsets.all(5),
          width: 30,
          height: 30,
          alignment: Alignment.center,
          color: isAvailable
              ? _isSelect ? colorSelect : colorAvailable
              : colorUnavailable,
          child: Text(
            numberPlace.toString(),
            style: textStyle,
          )),
    );
  }

  void _toggleColor(int id) {
    setState(() {
      _isSelect = !_isSelect;
    });
  }
}

class MScenePlaces extends StatelessWidget {
  final int row;
  final int column;

  const MScenePlaces(this.row, this.column);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Column(
        children: <Widget>[
          for (int i = 0; i < row; i++)
            Container(
                child: _drawRow(i + 1, column),
                margin: EdgeInsets.only(bottom: 15, right: 20)),
        ],
      ),
    );
  }
}

Widget _drawRow(int id, int column) {
  const TextStyle textStyle =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 16);
  return Container(
    child: Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(right: 20, top: 5, bottom: 5, left: 5),
            width: 30,
            height: 30,
            alignment: Alignment.center,
            child: Text(
              id.toString(),
              style: textStyle,
            )),
        Row(
          children: <Widget>[
            for (int i = 0; i < column; i++)
              MPlace(i, i + 1, Random().nextBool()),
          ],
        )
      ],
    ),
  );
}
