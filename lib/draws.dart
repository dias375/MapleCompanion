import 'package:flutter/material.dart';
import 'menu.dart';
import 'widgets/titlebar.dart';

class Draws extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,

        //* BARRA DE TÍTULO
        //todo Build 'TitleBar' as a widget
        appBar: TitleBar(
          text: 'Draws',
        ),

        //* MENU HAMBURGUER
        endDrawer: SideMenu(),
      ),
    );
  }
}
