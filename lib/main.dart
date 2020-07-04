import 'package:flutter/material.dart';
import 'global.dart';

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
        appBar: AppBar(
          backgroundColor: AppColors.yPink,
          title: Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: AppColors.yRed,
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                'Maple Companion',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.yDarkRed,
                ),
              ),
            ],
          ),
        ),

        //* MENU HAMBURGUER
        endDrawer: Drawer(
          child: Container(
            color: AppColors.yPink,
            child: ListView(
              children: <Widget>[
                //*TÍTULO DO MENU
                Container(
                  color: AppColors.yRed,
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.pets,
                        color: AppColors.yPink,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(
                        'Menu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.yPink,
                        ),
                      ),
                    ],
                  ),
                ),
                //*BOTÕES DE AÇÃO
                Container(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        color: AppColors.yDarkRed,
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.yDarkRed,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
