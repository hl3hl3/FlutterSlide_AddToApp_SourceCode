import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class QA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PageTitle("End"),
        Subtitle("祝福各位 Add-to-App 都使用順利，團隊和樂融融，皆大歡喜"),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 24),
          child: TextUrl("https://flutter.dev/docs/development/add-to-app"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 16),
          child: TextUrl("https://flutter.dev/docs/development/tools/sdk/releases"),
        ),
        Subtitle("Ｑ＆Ａ"),
      ],
    ));
  }
}
