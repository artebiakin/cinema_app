import 'package:cinema_app/globalVariables.dart';
import 'package:flutter/material.dart';

class MAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool isHome;

  MAppBar([this.title = '', this.isHome = false]);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).accentColor,
      title: Text(title),
      leading: isHome
          ? Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(heightAppBar);
}
