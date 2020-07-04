import 'package:flutter/material.dart';
import 'colors.dart';

//! TILE BUTTON
class TileButton extends StatelessWidget {
  TileButton(
      {this.onPressed,
      this.text,
      this.icon,
      this.backgroundColor,
      this.textColor});

  final GestureTapCallback onPressed;
  final String text;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      color: backgroundColor,
      splashColor: AppColors.bordeaux,
      child: Container(
        padding: EdgeInsetsDirectional.only(top: 16, bottom: 16),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: textColor,
            ),
            Padding(
              padding: EdgeInsets.all(10),
            ),
            Text(
              '$text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//! <end> TILE BUTTON
