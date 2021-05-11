import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Point extends StatelessWidget {
  final String content;

  Point(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      child: Wrap(
        children: [
          Text(" - ", style: Theme.of(context).textTheme.headline4),
          SizedBox(width: 24),
          Text(content, style: Theme.of(context).textTheme.headline4),
        ],
      ),
    );
  }
}

class PointContent extends StatelessWidget {
  final String content;

  PointContent(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      child: Wrap(
        children: [
          Text(content, style: Theme.of(context).textTheme.headline4),
        ],
      ),
    );
  }
}

class Paragraph extends StatelessWidget {
  final String content;

  Paragraph(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      child: Text(content, style: Theme.of(context).textTheme.subtitle1,),
    );
  }

}

class Subtitle extends StatelessWidget {
  final String content;

  Subtitle(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      child: Text(content, style: Theme.of(context).textTheme.headline4),
    );
  }
}

class PageTitle extends StatelessWidget {
  final String content;

  PageTitle(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(content, style: Theme.of(context).textTheme.headline2),
    );
  }
}

class TextSlideTitle extends StatelessWidget {
  final String content;

  TextSlideTitle(this.content);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(content, style: Theme.of(context).textTheme.headline2),
    );
  }
}

class BodyText1 extends StatelessWidget {
  final String content;

  BodyText1(this.content);

  @override
  Widget build(BuildContext context) {
    return Text(content, style: Theme.of(context).textTheme.bodyText1);
  }

}

class BodyText2 extends StatelessWidget {
  final String content;

  BodyText2(this.content);

  @override
  Widget build(BuildContext context) {
    return Text(content, style: Theme.of(context).textTheme.bodyText2);
  }

}

class TextUrl extends StatelessWidget {
  final String content;

  TextUrl(this.content);

  @override
  Widget build(BuildContext context) {
    return Text(content, style: Theme.of(context).textTheme.bodyText2.apply(
      color: Colors.blueAccent,
    ));
  }

}

class TextTitle extends Text {
  TextTitle(String text)
      : super(
    text,
    style: TextStyle(
      color: Colors.cyan,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
  );
}

class TextSubTitle extends Text {
  TextSubTitle(String text)
      : super(
    text,
    style: TextStyle(
      color: Colors.blueGrey,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}

class TextItem2 extends Text {
  TextItem2(String text)
      : super(
    text,
    style: TextStyle(
      color: Colors.blueGrey,
      fontSize: 18,
    ),
  );
}

class TextItem3 extends Text {
  TextItem3(String text)
      : super(
    text,
    style: TextStyle(
      color: Colors.blueGrey,
      fontSize: 16,
    ),
  );
}
