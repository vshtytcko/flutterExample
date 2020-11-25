import 'package:new_project/Model/Contact.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Screens/ContactDetails/Views/ContactDetailsButton.dart';
import 'package:new_project/Screens/ContactDetails/Views/ContactDetailsPictureView.dart';
import 'package:new_project/Screens/ContactDetails/Views/ContactDetailsTextView.dart';
import 'package:new_project/ViewModels/ContactDetailsViewModel.dart';

class ContactDetailsViewController extends StatefulWidget {
  ContactDetailsViewController({Key key, this.viewModel}) : super(key: key);

  final ContactDetailsViewModel viewModel;

  @override
  _ContactDetailsViewController createState() =>
      _ContactDetailsViewController();
}

class _ContactDetailsViewController
    extends State<ContactDetailsViewController> {
  @override
  Widget build(BuildContext context) {
    final viewModel = widget.viewModel;
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text(viewModel.appBarText()),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ContactDetailsPictureView(
                imageURL: viewModel.imageURL(),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                child: Column(
                  children: [
                    ContactDetailsTextView(
                      title: "email:",
                      description: viewModel.emailTextViewText(),
                    ),
                    ContactDetailsTextView(
                      title: "cell:",
                      description: viewModel.cellTextViewText(),
                    ),
                    ContactDetailsTextView(
                      title: "phone:",
                      description: viewModel.phoneTextViewText(),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ContactDetailsButton(
                      function: () {
                        viewModel.makeEmail();
                      },
                      text: viewModel.emailButtonText(),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ContactDetailsButton(
                      function: () {
                        viewModel.makeCall();
                      },
                      text: viewModel.callButtonText(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return scaffold;
  }
}
/*
*/
