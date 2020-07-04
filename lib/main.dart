import 'package:flutter/material.dart';

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
          backgroundColor: Color.fromRGBO(250, 188, 188, 1),
          title: Row(
            children: <Widget>[
              Icon(
                Icons.ac_unit,
                color: Color.fromRGBO(221, 46, 68, 1),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                'Maple Companion',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(125, 14, 14, 1),
                ),
              ),
            ],
          ),
        ),

        //* MENU HAMBURGUER
        endDrawer: Drawer(
          child: Container(
            color: Color.fromRGBO(250, 188, 188, 1),
            child: ListView(
              children: <Widget>[
                //*TÍTULO DO MENU
                Container(
                  color: Color.fromRGBO(221, 46, 68, 1),
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.pets,
                        color: Color.fromRGBO(250, 188, 188, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(
                        'Menu',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(250, 188, 188, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                //*BOTÕES DE AÇÃO
                Container(
                  //color: Color.fromRGBO(221, 46, 68, 1),
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.account_circle,
                        color: Color.fromRGBO(125, 14, 14, 1),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(125, 14, 14, 1),
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
