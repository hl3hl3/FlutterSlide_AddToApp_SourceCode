import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class Security extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Wrap(
        direction: Axis.vertical,
        children: [
          PageTitle("安全性議題"),
          Point("Flutter 最後包出什麼"),
          Point("現有的防護機制"),
          Point("實作分配"),
        ],
      ),
    );
  }
}
