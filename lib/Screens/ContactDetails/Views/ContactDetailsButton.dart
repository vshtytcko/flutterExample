import 'package:flutter/material.dart';

class ContactDetailsButton extends StatelessWidget {
  final String text;
  final void Function() function;

  ContactDetailsButton({this.text, this.function});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: function,
        color: Colors.blue,
        height: 50,
        minWidth: 100,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ));
  }
}
