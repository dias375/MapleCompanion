import 'package:flutter/material.dart';
import 'menu.dart';
import 'widgets/titlebar.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
