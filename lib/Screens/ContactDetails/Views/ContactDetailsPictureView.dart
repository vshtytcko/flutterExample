import 'package:flutter/material.dart';

class ContactDetailsPictureView extends StatelessWidget {
  final String imageURL;

  ContactDetailsPictureView({this.imageURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        imageURL,
        width: 120,
        height: 120,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(60),
        ),
      ),
    );
  }
}
