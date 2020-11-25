import 'package:json_annotation/json_annotation.dart';
part 'Contact.g.dart';

@JsonSerializable()
class Contact {
  final String email;
  final String phone;
  final String cell;
  final String gender;
  final NameInfo nameInfo;
  final LocationInfo locationInfo;
  final LoginInfo loginInfo;
  final DateOfBirthInfo dateOfBirthInfo;
  final PictureInfo pictureInfo;

  Contact({
    this.email,
    this.phone,
    this.cell,
    this.gender,
    this.nameInfo,
    this.dateOfBirthInfo,
    this.locationInfo,
    this.loginInfo,
    this.pictureInfo,
  });

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

@JsonSerializable()
class NameInfo {
  final String title;
  final String first;
  final String last;

  NameInfo({
    this.title,
    this.first,
    this.last,
  });

  String full() {
    return title + " " + first + " " + last;
  }

  factory NameInfo.fromJson(Map<String, dynamic> json) =>
      _$NameInfoFromJson(json);
}

@JsonSerializable()
class LocationInfo {
  final String streetName;
  final int streetNumber;
  final String city;
  final String state;
  final String country;
  final String postcode;

  LocationInfo({
    this.streetName,
    this.streetNumber,
    this.city,
    this.state,
    this.country,
    this.postcode,
  });

  factory LocationInfo.fromJson(Map<String, dynamic> json) =>
      _$LocationInfoFromJson(json);
}

@JsonSerializable()
class LoginInfo {
  final String username;

  LoginInfo({
    this.username,
  });

  factory LoginInfo.fromJson(Map<String, dynamic> json) =>
      _$LoginInfoFromJson(json);
}

@JsonSerializable()
class DateOfBirthInfo {
  final String date;
  final int age;

  DateOfBirthInfo({
    this.age,
    this.date,
  });

  factory DateOfBirthInfo.fromJson(Map<String, dynamic> json) =>
      _$DateOfBirthInfoFromJson(json);
}

@JsonSerializable()
class PictureInfo {
  final String large;
  final String medium;
  final String thumbnail;

  PictureInfo({
    this.large,
    this.medium,
    this.thumbnail,
  });

  factory PictureInfo.fromJson(Map<String, dynamic> json) =>
      _$PictureInfoFromJson(json);
}
