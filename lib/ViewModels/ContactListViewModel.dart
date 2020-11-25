import 'package:flutter/material.dart';
import 'package:new_project/Constants/Constants.dart';
import 'package:new_project/Model/Contact.dart';
import 'package:new_project/RestAPI/RestAPIRequestService.dart';
import 'package:new_project/Screens/ContactDetails/ContactDetailsViewController.dart';
import 'package:new_project/ViewModels/ContactDetailsViewModel.dart';

class ContactListViewModel {
  final List<Contact> contacts = [];
  final String title;

  ContactListViewModel({this.title});

  String appBarTitleText() {
    return title;
  }

  Future<List<Contact>> getContacts() {
    return RestAPIRequestService()
        .getContacts(0, Constants.countOfItemsInBatch);
  }
}
