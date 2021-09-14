import 'dart:convert';

import 'package:http/http.dart' as http;

class ServerConnection {
  static const url = "http://192.168.1.108:5555/";

  static Future<void> signUp(String fullName, String email, String phone,
      String password, String country, String city, String address) async {
    final resp = await http.post(Uri.tryParse(url + "sign_up_doctor"), body: {
      "fullName": fullName,
      "email": email,
      "phone": phone,
      "password": password,
      "country": country,
      "city": city,
      "address": address
    });
    if (resp.statusCode == 200) {
      print(resp.body);
      Map<String, dynamic> json = jsonDecode(resp.body);
      print(json);
    }
  }

  static Future<void> login(String email, String password) async {
    final resp = await http.post(Uri.tryParse(url + "login_doctor"), body: {
      "email": email,
      "password": password,
    });
    if (resp.statusCode == 200) {
      print(resp.body);
      Map<String, dynamic> json = jsonDecode(resp.body);
      print(json);
    }
  }
}
