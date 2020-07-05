import 'package:flutter/material.dart';
import '../variables/colors.dart';

class TileButton extends StatelessWidget {
  TileButton(
      {this.onPressed, @required this.text, @required this.icon, this.isTitle});

  final GestureTapCallback onPressed;
  final String text;
  final IconData icon;
  final int isTitle;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: isTitle == null ? AppColors.pink : AppColors.red,
      splashColor: AppColors.bordeaux,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: isTitle == null ? AppColors.bordeaux : AppColors.pink,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
            Text(
              '$text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isTitle == null ? AppColors.bordeaux : AppColors.pink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
