import 'package:doctor_assistant/generated/l10n.dart';
import 'package:flutter/material.dart';

class ArticleTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Create Article"),
        TextField(
          decoration: InputDecoration(hintText: "Article title"),
        ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(hintText: "Content"),
        )),
        ElevatedButton(onPressed: () {}, child: Text(S.of(context).submit))
      ],
    );
  }
}
