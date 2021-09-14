import 'package:flutter/cupertino.dart';

class SignUpInformation {
  static String fullName;
  static String phone;
  static String password;
  static String email;
  static String country;
  static String city;
  static String address;

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'phone': phone,
      'password': password,
      'email': email,
      'country': country,
      'city': city,
      'address': address
    };
  }
}
