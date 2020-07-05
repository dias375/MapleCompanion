import 'package:flutter/material.dart';
import 'package:maple_companion/widgets/titlebar.dart';
import 'widgets/sidemenu.dart';
import 'widgets/titlebar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,

        //* BARRA DE TÍTULO
        //todo Build 'TitleBar' as a widget
        appBar: TitleBar(
          text: 'Profile',
        ),

        //* MENU HAMBURGUER
        endDrawer: SideMenu(),
      ),
    );
  }
}
