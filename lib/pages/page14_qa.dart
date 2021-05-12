import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class QA extends StatelessWidget {
  final itemPadding = const EdgeInsets.only(left: 48, top: 24);

  @override
  Widget build(BuildContext context) {
    return SlidePage(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PageTitle("End"),
        Subtitle("祝福各位都能快樂的 Add-to-App"),
        Point("Flutter 官網文件："),
        Padding(
          padding: itemPadding,
          child: TextUrl("https://flutter.dev/docs/development/add-to-app"),
        ),
        Point("Flutter SDK Release 資訊："),
        Padding(
            padding: itemPadding,
            child: TextUrl(
                "https://flutter.dev/docs/development/tools/sdk/releases")),
        Point("Flutter Taipei 活動資訊："),
        Padding(
          padding: itemPadding,
          child: Image.asset(
            "images/img_events.png",
            width: 600,
          ),
        ),
        Padding(
          padding: itemPadding,
          child: TextUrl("https://www.meetup.com/Flutter-Taipei/"),
        ),
      ],
    ));
  }
}
