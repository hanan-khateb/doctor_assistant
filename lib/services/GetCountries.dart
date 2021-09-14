import '../services/FetchDataFromInternet.dart';
import '../models/Countries.dart';

class GetCountries {
  static Future<void> fetchAllCountries() async {
    Map<String, dynamic> json = await FetchDataFromInternet.fetch(
        "https://countriesnow.space/api/v0.1/countries/");

    Countries.countriesAndCities = json["data"];
    for (Map<String, dynamic> i in Countries.countriesAndCities) {
      Countries.countries.add(i["country"]);
    }
  }
}
