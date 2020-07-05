import 'package:flutter/material.dart';
import '../variables/colors.dart';

class TitleBar extends StatelessWidget with PreferredSizeWidget {
  TitleBar({this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.pink,
      title: Row(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: AppColors.red,
          ),
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Text(
            text != null ? text : 'Maple Companion',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.bordeaux,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
