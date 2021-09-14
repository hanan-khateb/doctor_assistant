import 'package:flutter/cupertino.dart';

class Countries with ChangeNotifier {
  static List countriesAndCities = [];
  static List countries = [];
  static List cities = [];
  String selectionCountry, selectionCity;

  void changeSelectedCountry(String value) {
    selectionCountry = value;
    for (Map<String, dynamic> i in Countries.countriesAndCities) {
      if (i["country"] == value) {
        Countries.cities = i['cities'];
      }
    }
    selectionCity = Countries.cities[0];

    notifyListeners();
  }

  void changeCity(String value) {
    selectionCity = value;

    notifyListeners();
  }
}
