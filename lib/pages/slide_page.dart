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

class TitleContentsPage extends StatelessWidget {
  final String title;
  final List<String> contents;

  TitleContentsPage({this.title, this.contents});

  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Wrap(
        direction: Axis.vertical,
        children: [
          TextTitle(title),
          Wrap(
            direction: Axis.vertical,
            children: contents.map((content) => TextSubTitle(content)).toList(),
          )
        ],
      ),
    );
  }
}

class TitleBodyPage extends StatelessWidget {
  final String title;
  final Widget body;

  TitleBodyPage({this.title, this.body});

  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Wrap(
        direction: Axis.vertical,
        children: [
          TextTitle(title),
          body,
        ],
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  final Map<String, List<String>> contents;

  Item2(this.contents);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: contents.keys
          .map((title) => Wrap(
                direction: Axis.vertical,
                children: [
                  TextItem2(title),
                  Item3(contents[title]),
                ],
              ))
          .toList(),
    );
  }
}

class Item3 extends StatelessWidget {
  final List<String> contents;

  Item3(this.contents);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      children: contents.map((content) => TextItem3(content)).toList(),
    );
  }
}
