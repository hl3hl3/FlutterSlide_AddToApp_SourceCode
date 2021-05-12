import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class SlidePage extends StatelessWidget {
  final Widget pageContent;

  SlidePage(this.pageContent);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 80, right: 80, top: 60),
      child: pageContent,
    );
  }
}