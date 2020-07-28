import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maple_companion/draws.dart';
import 'package:maple_companion/main.dart';
import 'package:maple_companion/profile.dart';
import 'variables/colors.dart';

class SideMenu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.pink,
        child: ListView(
          children: <Widget>[
            //* BOTÕES DO MENU
            TileButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => MyApp(),
                  ),
                );
              },
              icon: Icons.pets,
              text: 'Menu',
              colorTheme: 1,
            ),
            TileButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => Profile(),
                  ),
                );
              },
              icon: Icons.portrait,
              text: 'Profile',
            ),
            TileButton(
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => Draws(),
                  ),
                );
              },
              icon: Icons.format_list_numbered,
              text: 'Draws',
            ),
            TileButton(
              onPressed: () {},
              icon: Icons.star_border,
              text: 'Rate the app',
            ),
            TileButton(
              onPressed: () {},
              icon: Icons.settings,
              text: 'Settings',
            ),
            TileButton(
              onPressed: () {},
              icon: Icons.exit_to_app,
              text: 'Logout',
            ),
          ],
        ),
      ),
    );
  }
}

//! TILE BUTTON WIDGET

class TileButton extends StatelessWidget {
  TileButton(
      {this.onPressed,
      @required this.text,
      @required this.icon,
      this.colorTheme});

  final GestureTapCallback onPressed;
  final String text;
  final IconData icon;
  final int colorTheme;

  //! Color Theme
  //? Default: Pink background & Bourdeaux background
  //?    1   : Red background & Pink Letters

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: colorTheme == 1 ? AppColors.red : AppColors.pink,
      splashColor: AppColors.bordeaux,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: colorTheme == 1 ? AppColors.pink : AppColors.bordeaux,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            Text(
              '$text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: colorTheme == 1 ? AppColors.pink : AppColors.bordeaux,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
