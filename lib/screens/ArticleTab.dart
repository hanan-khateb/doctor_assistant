import 'package:doctor_assistant/generated/l10n.dart';
import 'package:flutter/material.dart';

class ArticleTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: Text(S.of(context).Creat_article)),
          TextField(
            decoration: InputDecoration(hintText: S.of(context).article_title),
          ),
          Expanded(
              child: TextField(
            keyboardType: TextInputType.multiline,
            minLines: 10,
            maxLines: 200,
            decoration: InputDecoration(
              hintText: S.of(context).article_content,
            ),
          )),
          ElevatedButton(onPressed: () {}, child: Text(S.of(context).submit))
        ],
      ),
    );
  }
}
