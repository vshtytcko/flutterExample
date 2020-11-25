// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return Contact(
    email: json['email'] as String,
    gender: json['gender'] as String,
    phone: json['phone'] as String,
    cell: json['cell'] as String,
    nameInfo: json['name'] == null
        ? null
        : NameInfo.fromJson(json['name'] as Map<String, dynamic>),
    dateOfBirthInfo: json['dob'] == null
        ? null
        : DateOfBirthInfo.fromJson(json['dob'] as Map<String, dynamic>),
    locationInfo: json['location'] == null
        ? null
        : LocationInfo.fromJson(json['location'] as Map<String, dynamic>),
    loginInfo: json['login'] == null
        ? null
        : LoginInfo.fromJson(json['login'] as Map<String, dynamic>),
    pictureInfo: json['picture'] == null
        ? null
        : PictureInfo.fromJson(json['picture'] as Map<String, dynamic>),
  );
}

NameInfo _$NameInfoFromJson(Map<String, dynamic> json) {
  return NameInfo(
    title: json['title'] as String,
    first: json['first'] as String,
    last: json['last'] as String,
  );
}

LocationInfo _$LocationInfoFromJson(Map<String, dynamic> json) {
  return LocationInfo(
    streetName: json['street']['name'] as String,
    streetNumber: json['street']['number'] as int,
    city: json['city'] as String,
    state: json['state'] as String,
    country: json['country'] as String,
    postcode: "$json['postcode']",
  );
}

LoginInfo _$LoginInfoFromJson(Map<String, dynamic> json) {
  return LoginInfo(
    username: json['username'] as String,
  );
}

DateOfBirthInfo _$DateOfBirthInfoFromJson(Map<String, dynamic> json) {
  return DateOfBirthInfo(
    age: json['age'] as int,
    date: json['date'] as String,
  );
}

PictureInfo _$PictureInfoFromJson(Map<String, dynamic> json) {
  return PictureInfo(
    large: json['large'] as String,
    medium: json['medium'] as String,
    thumbnail: json['thumbnail'] as String,
  );
}
