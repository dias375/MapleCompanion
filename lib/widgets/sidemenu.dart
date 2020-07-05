import 'package:flutter/material.dart';
import '../variables/colors.dart';
import 'tilebutton.dart';

class SideMenu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.pink,
        child: ListView(
          children: <Widget>[
            //* BOTÕES DO MENU

            TileButton(
              onPressed: () {},
              icon: Icons.pets,
              text: 'Menu',
              isTitle: 1,
            ),
            TileButton(
              onPressed: () {},
              icon: Icons.portrait,
              text: 'Profile',
            ),
            TileButton(
              onPressed: () {},
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
