import 'dart:convert';

import 'package:http/http.dart' as http;

class FetchDataFromInternet {
  static Future<Map> fetch(String url) async {
    final response = await http.get(Uri.tryParse(url));
    if (response.statusCode == 200) {
      try {
        Map<String, dynamic> json = jsonDecode(response.body);
        return json;
      } catch (e) {
        return {};
      }
    } else {
      return {};
    }
  }
}
