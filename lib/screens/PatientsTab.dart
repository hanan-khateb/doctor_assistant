import 'package:flutter/material.dart';

class PatientsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const TableRow tableRow = TableRow(children: [
      const Text("Name",
          overflow: TextOverflow.fade, textAlign: TextAlign.center),
      const Text("Age",
          overflow: TextOverflow.fade, textAlign: TextAlign.center),
      const Text("date",
          overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
      const Text("beck",
          overflow: TextOverflow.ellipsis, textAlign: TextAlign.center),
      const Text("checked",
          overflow: TextOverflow.ellipsis, textAlign: TextAlign.center)
    ]);
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Text("Patients information"),
        ),
        Table(children: [
          tableRow,
        ], columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(0.3),
          1: FlexColumnWidth(0.1),
          2: FlexColumnWidth(0.2),
          3: FlexColumnWidth(0.1),
          4: FlexColumnWidth(0.2),
        }, border: TableBorder.all(), textDirection: TextDirection.ltr
            // end table,
            )
      ],
    );
  }
}
