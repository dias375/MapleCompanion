import 'package:flutter/material.dart';

class NumberInput extends StatefulWidget {
  NumberInput({Key key}) : super(key: key);

  @override
  _NumberInputState createState() => _NumberInputState();
}

class _NumberInputState extends State<NumberInput> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'HERE!'),
            ),
          ),
        ],
      ),
    );
  }
}
