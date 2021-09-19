import 'package:doctor_assistant/generated/l10n.dart';
import 'package:doctor_assistant/screens/ImagesOfResults.dart';
import 'package:flutter/material.dart';

class PatientsTab extends StatefulWidget {
  @override
  _PatientsTabState createState() => _PatientsTabState();
}

class _PatientsTabState extends State<PatientsTab> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    TableRow tableRow = TableRow(children: [
      Text(S.of(context).ID,
          overflow: TextOverflow.fade, textAlign: TextAlign.center),
      Text(S.of(context).Name,
          overflow: TextOverflow.fade, textAlign: TextAlign.center),
      Text(S.of(context).Age,
          overflow: TextOverflow.fade, textAlign: TextAlign.center),
      Text(S.of(context).date,
          overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
      Text(S.of(context).beck,
          overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
      Text(S.of(context).checked,
          overflow: TextOverflow.ellipsis, textAlign: TextAlign.center)
    ]);

    TableRow tableRowTest = TableRow(children: [
      InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(ImagesOfResults.id);
          },
          child: const Text("1",
              overflow: TextOverflow.fade, textAlign: TextAlign.center)),
      const Text("hanan khateb",
          overflow: TextOverflow.fade, textAlign: TextAlign.center),
      const Text("24",
          overflow: TextOverflow.fade, textAlign: TextAlign.center),
      const Text("17/9/2021",
          overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
      const Text("30",
          overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
      IconButton(
        icon: Icon(
          check ? Icons.remove_done : Icons.check,
          size: 30,
          color: Colors.green,
        ),
        onPressed: () {
          setState(() {
            check = !check;
          });
        },
      )
    ]);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(S.of(context).Patients_information),
          ),
          Table(
            children: [
              tableRow,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest,
              tableRowTest
            ],
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(0.1),
              1: FlexColumnWidth(0.3),
              2: FlexColumnWidth(0.1),
              3: FlexColumnWidth(0.2),
              4: FlexColumnWidth(0.1),
              5: FlexColumnWidth(0.1),
            },
            border: TableBorder.all(),
            textDirection: TextDirection.ltr,
          )
        ],
      ),
    );
  }
}
