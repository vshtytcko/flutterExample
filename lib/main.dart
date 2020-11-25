import 'package:flutter/material.dart';
import 'package:new_project/Screens/ContactList/ContactListViewController.dart';
import 'package:new_project/ViewModels/ContactListViewModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ContactListViewController(
        viewModel: ContactListViewModel(title: 'Contacts List'),
      ),
    );
  }
}
