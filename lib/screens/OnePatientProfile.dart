import 'package:doctor_assistant/generated/l10n.dart';
import 'package:doctor_assistant/utils/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnePatientProfile extends StatelessWidget {
  static const id = "OnePatientProfile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [
                            Icon(
                                //Icons.badge,
                                Icons.account_circle_outlined,
                                color: Colors.blue[900],
                                size: 100)
                          ]),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Patient Name"),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("095555555"),
                                      Icon(
                                        Icons.phone,
                                        color: Colors.green[700],
                                      )
                                    ]),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("1/1/1997"),
                                      Icon(
                                        Icons.calendar_today_outlined,
                                        color: Colors.green[700],
                                      )
                                    ]),
                              ]),
                        ]),
                    Divider(),
                    Container(
                      child: TextField(
                        maxLines: 10,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: Text(S.of(context).save))
                  ])),
        ));
  }
}
