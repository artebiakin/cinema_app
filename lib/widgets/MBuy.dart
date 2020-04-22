import 'package:flutter/material.dart';

import '../globalVariables.dart';

class MBuy extends StatefulWidget {
  MBuy();

  @override
  _MBuyState createState() => _MBuyState();
}

class _MBuyState extends State<MBuy> {
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Усього: $result грн.',
                  style: fontH3,
                ),
              ),
              GestureDetector(
                onTap: () => setState(() => print('buy')),
                child: Container(
                  alignment: Alignment(0.0, 0.0),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'Придбати',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: fontH3.fontSize,
                        fontWeight: fontH3.fontWeight),
                  ),
                  width: 250,
                  height: 50,
                ),
              )
            ],
          )),
    );
  }
}
