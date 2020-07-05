import 'package:flutter/material.dart';
import 'package:maple_companion/widgets/titlebar.dart';
import 'widgets/sidemenu.dart';

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
        appBar: TitleBar(
          text: 'Draws',
        ),

        //* MENU HAMBURGUER
        endDrawer: SideMenu(),
      ),
    );
  }
}
