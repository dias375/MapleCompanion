import 'package:flutter/material.dart';
import '../variables/colors.dart';

class TitleBar extends StatelessWidget with PreferredSizeWidget {
  TitleBar({this.text, this.colorTheme});

  final String text;
  final int colorTheme;

  //! Color Theme
  //? Default: Pink background & Bordeaux Letters
  //?    1   : Red background & Pink Letters

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colorTheme == 1 ? AppColors.red : AppColors.pink,
      title: Row(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: colorTheme == 1 ? AppColors.bordeaux : AppColors.red,
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Text(
            text != null ? text : 'Maple Companion',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: colorTheme == 1 ? AppColors.pink : AppColors.bordeaux,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
