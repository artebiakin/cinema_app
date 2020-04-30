import 'package:flutter/material.dart';
import 'package:cinema_app/data/MenuLink.dart';

import 'package:url_launcher/url_launcher.dart';

class MMenuBar extends StatelessWidget {
  final data = <MenuLink>[
    MenuLink('Зараз у кіно'),
    MenuLink('Скоро у прокаті'),
    MenuLink('Акції та знижки'),
    MenuLink('Кінотеатри'),
    MenuLink('Допомога'),
    MenuLink('Про компанію'),
    MenuLink('Особистий кабінет')
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawHeader(context),
          _drawList(data),
          _phone(),
        ],
      ),
    );
  }
}

DrawerHeader _drawHeader(context) {
  return DrawerHeader(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Cinema app',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.w600),
        )
      ],
    ),
    decoration: BoxDecoration(color: Theme.of(context).accentColor),
  );
}

Wrap _drawList(List<MenuLink> data) {
  return Wrap(
    children: <Widget>[
      for (MenuLink item in data)
        ListTile(
          title: Text(item.name),
          onTap: () => _onClick(item.name),
          trailing: Icon(Icons.keyboard_arrow_right),
        )
    ],
  );
}

_phone() {
  final String _number = '0 800 505 333';
  final IconData _icon = Icons.phone;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    child: GestureDetector(
      onTap: () => _call(_number),
      child: Wrap(
        children: <Widget>[Icon(_icon), Text(_number)],
        spacing: 10.0,
        crossAxisAlignment: WrapCrossAlignment.center,
      ),
    ),
  );
}

void _onClick(name) {
  print(name);
}

void _call(String number) {
  String _code = '38';
  launch('tel:+$_code$number');
}
