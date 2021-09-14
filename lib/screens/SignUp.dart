import 'package:doctor_assistant/models/SignUpInformation.dart';

import '../screens/SignUpSecond.dart';
import '../utils/FontsStyle.dart';
import '../models/FavoriteSetting.dart';
import '../generated/l10n.dart';
import '../models/ValidateFunctions.dart';
import '../screens/LogIn.dart';
import '../utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUp extends StatelessWidget {
  static const id = "signup";
  double wScreen, hScreen;

  String fullname = "";
  String phone = "";
  String password = "";
  String email = "";
  final _formKey = GlobalKey<FormState>();
  bool isFormEmpty() {
    if (fullname == "" && phone == "" && password == "" && email == "")
      return true;
    else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    wScreen = MediaQuery.of(context).size.width;
    hScreen = MediaQuery.of(context).size.height;
    Future<bool> _onWillPop() {
      if (!isFormEmpty()) return Future<bool>.value(true);
      return showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
                content: Text(
                    "Are you sure you want to abandon the form? Any changes will be lost."),
                actions: <Widget>[
                  ElevatedButton(
                    child: Text("Cancel"),
                    onPressed: () => Navigator.of(context).pop(false),
                  ),
                  ElevatedButton(
                    child: Text("Abandon"),
                    onPressed: () => Navigator.pop(context, true),
                  ),
                ],
              ) ??
              false;
        },
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: Text(S.of(context).sign_up),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Form(
          onWillPop: _onWillPop,
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(60.0),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  initialValue: '',
                  style: FontsStyle.formContentTextStyle(wScreen, hScreen),
                  onChanged: (value) {
                    fullname = value;
                    SignUpInformation.fullName = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).fullName,
                      prefixIcon: Icon(
                        Icons.person,
                        color: AppColors.formIcon,
                      ),
                      labelStyle:
                          FontsStyle.formLabelTextStyle(wScreen, hScreen)),
                  autofocus: true,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value.isEmpty || value.length < 4) {
                      return 'Please enter correct Name';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  style: FontsStyle.formContentTextStyle(wScreen, hScreen),
                  onChanged: (value) {
                    phone = value;
                    SignUpInformation.phone = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).phone,
                      prefixIcon: Icon(
                        Icons.phone,
                        color: AppColors.formIcon,
                      ),
                      labelStyle:
                          FontsStyle.formLabelTextStyle(wScreen, hScreen)),
                  autofocus: true,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    return ValidateFunctions.validatePhone(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: FontsStyle.formContentTextStyle(wScreen, hScreen),
                  onSaved: (value) {
                    //  myData.add(value);
                  },
                  onChanged: (value) {
                    email = value;
                    SignUpInformation.email = value;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).email,
                      prefixIcon: Icon(
                        Icons.email,
                        color: AppColors.formIcon,
                      ),
                      labelStyle:
                          FontsStyle.formLabelTextStyle(wScreen, hScreen)),
                  validator: (value) {
                    return ValidateFunctions.validateEmail(value);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: Provider.of<FavoriteSetting>(context)
                      .getisObscurePassword(),
                  onChanged: (value) {
                    password = value;
                    SignUpInformation.password = value;
                  },
                  style: FontsStyle.formContentTextStyle(wScreen, hScreen),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: S.of(context).password,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: AppColors.formIcon,
                      ),
                      suffixIcon: IconButton(
                        icon:
                            Provider.of<FavoriteSetting>(context, listen: false)
                                    .getisObscurePassword()
                                ? Icon(Icons.visibility_off_outlined)
                                : Icon(Icons.visibility_outlined),
                        onPressed: () {
                          Provider.of<FavoriteSetting>(context, listen: false)
                              .changeVisabilityOfPassword();
                        },
                        iconSize: 30,
                        color: AppColors.formIcon,
                      ),
                      labelStyle:
                          FontsStyle.formLabelTextStyle(wScreen, hScreen)),
                  validator: (value) {
                    return ValidateFunctions.validatePassword(value);
                  },
                ),
              ),
              Container(
                height: 80,
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.submitButton)),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // _formKey.currentState.save();
                      //_formKey.currentState.reset();
                      Navigator.of(context).pushNamed(SignUpSecond.id);
                    }
                  },
                  child: Text(S.of(context).next),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Center(
                  child: InkWell(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: S.of(context).have_an_account,
                            style: TextStyle(
                              fontFamily: 'SFUIDisplay',
                              color: Colors.black,
                              fontSize: 15,
                            )),
                        TextSpan(
                            text: S.of(context).sign_in,
                            style: TextStyle(
                              fontFamily: 'SFUIDisplay',
                              color: Colors.blueAccent,
                              fontSize: 15,
                            ))
                      ]),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed(LogIn.id);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
