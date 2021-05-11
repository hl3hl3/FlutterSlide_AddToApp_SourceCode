import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class AboutFlutterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Flutter 是什麼？",
            style: Theme.of(context).textTheme.headline2,
          ),
          Point("Google 出的跨平台開發方案"),
          Point("容易上手，能快速做出漂亮且可用的軟體"),
          SizedBox(height: 24),
          FractionallySizedBox(
            widthFactor: 1,
            child: Carousel(),
          ),
        ],
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> with TickerProviderStateMixin {
  AnimationController animationController;
  AnimationController animationController1;
  AnimationController animationController2;
  AnimationController animationController3;
  Timer timer;
  int index = 0;

  int frame = 0;
  int skip = 0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      // duration: Duration(seconds: 2),
      vsync: this,
      value: 0,
    );
    animationController1 = AnimationController(
      // duration: Duration(seconds: 2),
      vsync: this,
      value: 0,
    );
    animationController2 = AnimationController(
      // duration: Duration(seconds: 2),
      vsync: this,
      value: 0,
    );
    animationController3 = AnimationController(
      // duration: Duration(seconds: 2),
      vsync: this,
      value: 0,
    );
    timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      if (skip-- > 0) {
        return;
      }

      switch (index) {
        case 0:
          animationController.value += d;
          if (animationController3.value > 0) {
            animationController3.value -= d;
          }
          break;
        case 1:
          animationController1.value += d;
          if (animationController.value > 0) {
            animationController.value -= d;
          }
          break;
        case 2:
          animationController2.value += d;
          if (animationController1.value > 0) {
            animationController1.value -= d;
          }
          break;
        case 3:
          animationController3.value += d;
          if (animationController2.value > 0) {
            animationController2.value -= d;
          }
          break;
      }

      if (animationController.value == 1) {
        skip = skipFrame;
        index = 1;
      }
      if (animationController1.value == 1) {
        skip = skipFrame;
        index = 2;
      }
      if (animationController2.value == 1) {
        skip = skipFrame;
        index = 3;
      }
      if (animationController3.value == 1) {
        skip = skipFrame;
        index = 0;
      }
    });
  }

  final skipFrame = 40;
  final d = 0.05;

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        FadeTransition(
          opacity: animationController.drive(CurveTween(curve: Curves.easeOut)),
          child: Carousel1(),
        ),
        FadeTransition(
          opacity:
              animationController1.drive(CurveTween(curve: Curves.easeOut)),
          child: Carousel2(),
        ),
        FadeTransition(
          opacity:
              animationController2.drive(CurveTween(curve: Curves.easeOut)),
          child: Carousel3(),
        ),
        FadeTransition(
          opacity:
              animationController3.drive(CurveTween(curve: Curves.easeOut)),
          child: Carousel4(),
        ),
      ],
    );
    // return AnimatedOpacity(
    //   opacity: _opacity,
    //   onEnd: () {
    //     if (_opacity == 1) {
    //       _opacity = 0;
    //     } else {
    //       _opacity = 1;
    //     }
    //     setState(() {});
    //   },
    //   duration: Duration(seconds: 2),
    //   child: Carousel1(),
    // );
  }
}

class Carousel1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Image.asset(
              "images/flutter_1_bg.jpeg",
              height: 400,
            ),
          ),
          Image.asset("images/flutter_1_layer.png"),
          Image.asset(
            "images/flutter_1_layer2.png",
            height: 500,
          ),
          Image.asset("images/flutter_phone.png"),
          Text(
            "Design                   apps    ",
            style: TextStyle(fontSize: 84, color: Colors.blue),
          ),
          Text(
            "beautiful",
            style: TextStyle(fontSize: 84, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class Carousel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 550),
            child: Image.asset(
              "images/flutter_2_bg.jpeg",
              height: 400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Image.asset(
              "images/flutter_2_layer2.png",
              height: 500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: Image.asset("images/flutter_2_layer.png"),
          ),
          Image.asset("images/flutter_phone.png"),
          Text(
            "                        build apps",
            style: TextStyle(fontSize: 90, color: Colors.blue),
          ),
          Text(
            "Productively                   ",
            style: TextStyle(fontSize: 90, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class Carousel3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Image.asset(
              "images/flutter_3_bg.jpeg",
              height: 400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, bottom: 80),
            child: Image.asset(
              "images/flutter_3_layer2.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 120,
            ),
            child: Image.asset("images/flutter_3_layer.png"),
          ),
          Image.asset("images/flutter_phone.png"),
          Text(
            "Create             apps",
            style: TextStyle(fontSize: 100, color: Colors.blue),
          ),
          Text(
            "   faster",
            style: TextStyle(fontSize: 100, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class Carousel4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 48, bottom: 48),
            child: Image.asset(
              "images/flutter_4_bg.jpeg",
              height: 400,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Image.asset(
              "images/flutter_4_layer2.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, bottom: 24),
            child: Image.asset(
              "images/flutter_4_layer.png",
            ),
          ),
          Image.asset("images/flutter_phone.png"),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Wrap(
              children: [
                Text(
                  "rget ",
                  style: TextStyle(fontSize: 84, color: Colors.blue),
                ),
                Text(
                  "mobile, web, & deskt",
                  style: TextStyle(fontSize: 84, color: Colors.white),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Text(
              "apps",
              style: TextStyle(fontSize: 84, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
