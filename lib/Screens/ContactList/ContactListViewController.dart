import 'package:new_project/Constants/Constants.dart';
import 'package:new_project/RestAPI/RestAPIRequestService.dart';
import 'package:new_project/Model/Contact.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Screens/ContactDetails/ContactDetailsViewController.dart';
import 'package:new_project/Screens/ContactList/Views/ContactListCell.dart';
import 'package:new_project/ViewModels/ContactDetailsViewModel.dart';
import 'package:new_project/ViewModels/ContactListViewModel.dart';

class ContactListViewController extends StatefulWidget {
  ContactListViewController({Key key, this.viewModel}) : super(key: key);

  final ContactListViewModel viewModel;

  @override
  _ContactListViewController createState() => _ContactListViewController();
}

class _ContactListViewController extends State<ContactListViewController> {
  @override
  Widget build(BuildContext context) {
    final viewModel = widget.viewModel;

    return Scaffold(
      appBar: AppBar(
        title: Text(viewModel.appBarTitleText()),
      ),
      body: FutureBuilder<List<Contact>>(
        future: viewModel.getContacts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var contacts = snapshot.data;
            return ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                var contact = contacts[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ContactDetailsViewController(
                            viewModel:
                                ContactDetailsViewModel(contact: contact)),
                      ),
                    );
                  },
                  child: ContactListCell(
                    contact: contact,
                  ),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
/*
*/
