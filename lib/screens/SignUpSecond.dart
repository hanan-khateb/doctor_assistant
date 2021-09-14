import 'package:doctor_assistant/models/SignUpInformation.dart';
import 'package:doctor_assistant/screens/HomePage.dart';
import 'package:doctor_assistant/services/ServerConnection.dart';

import '../generated/l10n.dart';
import '../models/Countries.dart';
import '../utils/AppColors.dart';
import '../utils/FontsStyle.dart';
import '../weidgets/MyDropButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpSecond extends StatelessWidget {
  static const String id = "signup2";
  double wScreen, hScreen;
  String address;

  @override
  Widget build(BuildContext context) {
    wScreen = MediaQuery.of(context).size.width;
    hScreen = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          title: Text(S.of(context).sign_up),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              Padding(padding: const EdgeInsets.all(40)),
              Padding(
                padding: const EdgeInsets.all(10),
                child: MyDropButton(
                    items: Countries.countries,
                    txt: "Pleas select Country",
                    value: Provider.of<Countries>(context).selectionCountry,
                    onChange: (value) {
                      Provider.of<Countries>(context, listen: false)
                          .changeSelectedCountry(value);
                      SignUpInformation.country = value;
                      SignUpInformation.city =
                          Provider.of<Countries>(context, listen: false)
                              .selectionCity;
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MyDropButton(
                    items: Countries.cities,
                    txt: " Select City",
                    value: Provider.of<Countries>(context).selectionCity,
                    onChange: (value) {
                      Provider.of<Countries>(context, listen: false)
                          .changeCity(value);
                      SignUpInformation.city = value;
                    }),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                child: TextFormField(
                  style: FontsStyle.formContentTextStyle(wScreen, hScreen),
                  onChanged: (value) {
                    address = value;
                    SignUpInformation.address = value;
                  },
                  decoration: InputDecoration(
                      hintText: S.of(context).address,
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.map,
                        color: AppColors.formIcon,
                      ),
                      labelStyle:
                          FontsStyle.formLabelTextStyle(wScreen, hScreen)),
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width - 30,
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.submitButton)),
                  onPressed: () {
                    ServerConnection.signUp(
                        SignUpInformation.fullName,
                        SignUpInformation.email,
                        SignUpInformation.phone,
                        SignUpInformation.password,
                        SignUpInformation.country,
                        SignUpInformation.city,
                        SignUpInformation.address);
                    Navigator.of(context).pushNamed(HomePage.id);
                  },
                  child: Text(S.of(context).submit),
                ),
              ),
            ],
          ),
        ));
  }
}
