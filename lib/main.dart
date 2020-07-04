import 'package:flutter/material.dart';
import 'colors.dart';
import 'widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,

        //* BARRA DE TÍTULO
        //todo Build 'TitleBar' as a widget
        appBar: AppBar(
          backgroundColor: AppColors.pink,
          title: Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: AppColors.red,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                'Maple Companion',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.bordeaux,
                ),
              ),
            ],
          ),
        ),

        //* MENU HAMBURGUER
        //todo Build 'HamburguerMenu' as a widget
        endDrawer: Drawer(
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
        ),
      ),
    );
  }
}
