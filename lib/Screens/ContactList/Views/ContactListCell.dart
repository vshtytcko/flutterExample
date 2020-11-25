import 'package:flutter/material.dart';
import 'package:new_project/Model/Contact.dart';

class ContactListCell extends StatelessWidget {
  final Contact contact;

  ContactListCell({this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Container(
            child: Image.network(contact.pictureInfo.medium),
            decoration: new BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(37.5),
              ),
            ),
            width: 75,
            height: 75,
            clipBehavior: Clip.antiAlias,
          ),
          SizedBox(width: 16),
          Container(
            child: Column(
              children: [
                Text(
                  contact.nameInfo.full(),
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  contact.email,
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        ],
      ),
      height: 100,
    );
  }
}
