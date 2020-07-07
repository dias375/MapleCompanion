import 'package:flutter/material.dart';
import '../variables/colors.dart';

class TileButton extends StatelessWidget {
  TileButton(
      {this.onPressed,
      @required this.text,
      @required this.icon,
      this.colorTheme});

  final GestureTapCallback onPressed;
  final String text;
  final IconData icon;
  final int colorTheme;

  //! Color Theme
  //? Default: Pink background & Bourdeaux background
  //?    1   : Red background & Pink Letters

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: colorTheme == 1 ? AppColors.red : AppColors.pink,
      splashColor: AppColors.bordeaux,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: colorTheme == 1 ? AppColors.pink : AppColors.bordeaux,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            Text(
              '$text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: colorTheme == 1 ? AppColors.pink : AppColors.bordeaux,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
