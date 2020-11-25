import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:new_project/Model/Contact.dart';

class RestAPIRequestService {
  Future<List<Contact>> getContacts(int page, int countOfResults) async {
    var response = await http.get(
      'https://randomuser.me/api/?results=$countOfResults',
    );

    return _parseContact(response.body);
  }

  List<Contact> _parseContact(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<String, dynamic>();
    final contacts = parsed['results']
        .map<Contact>((json) => Contact.fromJson(json))
        .toList();
    return contacts;
  }
}
