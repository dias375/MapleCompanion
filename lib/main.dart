import 'package:flutter/material.dart';
import 'colors.dart';
import 'sidemenu.dart';

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
        endDrawer: SideMenu(),
      ),
    );
  }
}
