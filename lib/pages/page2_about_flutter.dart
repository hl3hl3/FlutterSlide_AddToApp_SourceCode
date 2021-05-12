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
  @override
  void initState() {
    super.initState();
    _initiateAnimation();
  }

  @override
  void dispose() {
    _stopAnimation();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.5;
    return Stack(
      alignment: Alignment.center,
      children: [
        FadeTransition(
          opacity: _animationController.drive(CurveTween(curve: Curves.easeOut)),
          child: Carousel1(height),
        ),
        FadeTransition(
          opacity:
              _animationController1.drive(CurveTween(curve: Curves.easeOut)),
          child: Carousel2(height),
        ),
        FadeTransition(
          opacity:
              _animationController2.drive(CurveTween(curve: Curves.easeOut)),
          child: Carousel3(height),
        ),
        FadeTransition(
          opacity:
              _animationController3.drive(CurveTween(curve: Curves.easeOut)),
          child: Carousel4(height),
        ),
      ],
    );
  }

  AnimationController _animationController;
  AnimationController _animationController1;
  AnimationController _animationController2;
  AnimationController _animationController3;
  Timer _timer;
  int _index = 0;
  int _frameShouldSkip = 0;

  _initiateAnimation() {
    _animationController = AnimationController(vsync: this, value: 0);
    _animationController1 = AnimationController(vsync: this, value: 0);
    _animationController2 = AnimationController(vsync: this, value: 0);
    _animationController3 = AnimationController(vsync: this, value: 0);
    _timer = Timer.periodic(Duration(milliseconds: 30), (timer) {
      if (_frameShouldSkip-- > 0) {
        return;
      }

      switch (_index) {
        case 0:
          _changeValueByFrame(
            shouldFadeIn: _animationController,
            shouldFadeOut: _animationController3,
          );
          break;
        case 1:
          _changeValueByFrame(
            shouldFadeIn: _animationController1,
            shouldFadeOut: _animationController,
          );
          break;
        case 2:
          _changeValueByFrame(
            shouldFadeIn: _animationController2,
            shouldFadeOut: _animationController1,
          );
          break;
        case 3:
          _changeValueByFrame(
            shouldFadeIn: _animationController3,
            shouldFadeOut: _animationController2,
          );
          break;
      }

      if (_animationController.value == 1 ||
          _animationController1.value == 1 ||
          _animationController2.value == 1 ||
          _animationController3.value == 1) {
        _frameShouldSkip = 40;
        _index = ++_index % 4;
      }
    });
  }

  _changeValueByFrame({
    AnimationController shouldFadeIn,
    AnimationController shouldFadeOut,
  }) {
    shouldFadeIn.value += 0.05;
    if (shouldFadeOut.value > 0) {
      shouldFadeOut.value -= 0.05;
    }
  }

  _stopAnimation() {
    _timer.cancel();
  }
}

class Carousel1 extends StatelessWidget {
  final double height;

  Carousel1(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
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
  final double height;

  Carousel2(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
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
  final double height;

  Carousel3(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
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
  final double height;

  Carousel4(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
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
