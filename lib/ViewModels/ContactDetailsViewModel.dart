import 'package:email_launcher/email_launcher.dart';
import 'package:new_project/Model/Contact.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class ContactDetailsViewModel {
  final Contact contact;

  ContactDetailsViewModel({this.contact});

  void makeCall() {
    launch(('tel://${contact.cell}'));
  }

  void makeEmail() async {
    Email email = Email(
      to: [contact.email],
    );
    await EmailLauncher.launch(email);
  }

  String appBarText() {
    return contact.nameInfo.full();
  }

  String imageURL() {
    return contact.pictureInfo.large;
  }

  String emailTextViewText() {
    return contact.email;
  }

  String cellTextViewText() {
    return contact.cell;
  }

  String phoneTextViewText() {
    return contact.phone;
  }

  String emailButtonText() {
    return 'Email to ${contact.nameInfo.full()}';
  }

  String callButtonText() {
    return 'Call to cell \n${contact.cell}';
  }

  Container imageContainer() {
    return Container(
      child: Image.network(contact.pictureInfo.large),
      width: 120,
      height: 120,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: new BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(60),
        ),
      ),
    );
  }
}
