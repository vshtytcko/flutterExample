import 'package:flutter/material.dart';

class ContactDetailsTextView extends StatelessWidget {
  final String title;
  final String description;

  ContactDetailsTextView({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          SizedBox(
            width: 10,
          ),
          Text(description),
        ],
      ),
    );
  }
}
