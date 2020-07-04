import 'package:flutter/material.dart';
import 'colors.dart';
import 'widgets.dart';

class SideMenu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.pink,
        child: ListView(
          children: <Widget>[
            //* BOTÕES DO MENU
            TileButton(
              onPressed: null,
              icon: Icons.pets,
              text: 'Menu',
              textColor: AppColors.pink,
              backgroundColor: AppColors.red,
            ),
            TileButton(
              onPressed: null,
              icon: Icons.account_circle,
              text: 'Profile',
              textColor: AppColors.bordeaux,
              backgroundColor: AppColors.pink,
            ),
            TileButton(
              onPressed: null,
              icon: Icons.class_,
              text: 'Draws',
              textColor: AppColors.bordeaux,
              backgroundColor: AppColors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
