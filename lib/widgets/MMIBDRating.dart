import 'package:flutter/material.dart';

class MMIBDRating extends StatelessWidget {
  final double height = 70;
  final double width = 200;
  final bool isFormed;
  final double rating;
  const MMIBDRating(this.rating)
      : this.isFormed = rating == null ? false : true;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(0, -height / 2, 0),
      child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromRGBO(242, 242, 242, 1),
              boxShadow: ([
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, .1),
                    blurRadius: 10,
                    spreadRadius: 5),
              ])),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    (isFormed
                        ? Text(
                            rating.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                                fontSize: 24),
                          )
                        : Text(
                            'Ще несформований',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'IMBD',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
