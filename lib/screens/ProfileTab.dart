import 'package:doctor_assistant/screens/OnePatientProfile.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Container(
              width: MediaQuery.of(context).size.width - 20,
              height: MediaQuery.of(context).size.height / 8,
              child: Card(
                child: Center(
                  child: ListTile(
                      title: Text(
                        "id :patient Name",
                      ),
                      leading: Icon(
                        Icons.edit,
                        size: 30,
                        color: Colors.green,
                      )),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(OnePatientProfile.id);
            },
          );
        });
  }
}
