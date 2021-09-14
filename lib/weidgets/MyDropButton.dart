import 'package:flutter/material.dart';

class MyDropButton extends StatelessWidget {
  final String txt;
  final String value;
  final Function onChange;
  final List items;
  MyDropButton({this.items, this.txt, this.onChange, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width - 40,
      height: MediaQuery.of(context).size.height / 13,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton(
        underline: Text(""),
        isExpanded: true,
        value: value,
        style: TextStyle(color: Colors.black, fontSize: 16),
        hint: Text(txt,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            )),
        items: items
            .map((e) => DropdownMenuItem(child: Text(e), value: e))
            .toList(),
        onChanged: onChange,
      ),
    );
  }
}
