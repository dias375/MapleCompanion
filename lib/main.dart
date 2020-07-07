import 'package:flutter/material.dart';
import 'package:maple_companion/variables/colors.dart';
import 'package:maple_companion/widgets/titlebar.dart';
import 'package:maple_companion/widgets/inputnumber.dart';
import 'menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.red,

        //* BARRA DE TÍTULO
        appBar: TitleBar(
            //colorTheme: 1,
            ),

        //!TEST AREA
        body: Center(
          child: NumberInput(),
        ),
        //! <END> TEST AREA

        //* MENU HAMBURGUER
        endDrawer: SideMenu(),
      ),
    );
  }
}
