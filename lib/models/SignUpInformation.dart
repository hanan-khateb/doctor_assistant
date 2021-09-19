import 'package:shared_preferences/shared_preferences.dart';

class SignUpInformation {
  bool isNewClient;
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

  Future<bool> getIsNewClient() {
    Future<SharedPreferences> prefs = SharedPreferences.getInstance();
    prefs.then((value) {
      if (value.containsKey('newClient')) {
        isNewClient = (value.getBool('newClient') ?? true);
      } else {
        isNewClient = false;
      }

      return isNewClient;
    });
  }

  static void removeClient() {
    Future<SharedPreferences> prefs = SharedPreferences.getInstance();
    prefs.then((value) {
      value.setBool('newClient', true);
    });
  }

  static void addClient() {
    Future<SharedPreferences> prefs = SharedPreferences.getInstance();
    prefs.then((value) {
      value.setBool('newClient', false);
    });
  }
}
