import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class SlidePage extends StatelessWidget {
  final Widget pageContent;

  SlidePage(this.pageContent);

  @override
  Widget build(BuildContext context) {
    double paddingH = MediaQuery.of(context).size.width * 0.1;
    double paddingV = MediaQuery.of(context).size.height * 0.1;
    return Container(
      padding: EdgeInsets.only(left: paddingH, right: paddingH, top: paddingV),
      child: pageContent,
    );
  }
}