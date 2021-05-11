import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/page_indicator.dart';
import 'package:flutter_addtoapp/pages/page10_security.dart';
import 'package:flutter_addtoapp/pages/page11_mr_flutter_now.dart';
import 'package:flutter_addtoapp/pages/page13_tips.dart';
import 'package:flutter_addtoapp/pages/page14_qa.dart';
import 'package:flutter_addtoapp/pages/page1_cover.dart';
import 'package:flutter_addtoapp/pages/page2_about_flutter.dart';
import 'package:flutter_addtoapp/pages/page3_add_to_app.dart';
import 'package:flutter_addtoapp/pages/page4_add_to_app_option.dart';
import 'package:flutter_addtoapp/pages/page5_add_to_app_notice.dart';
import 'package:flutter_addtoapp/pages/page6_mr_ad.dart';
import 'package:flutter_addtoapp/pages/page7_mr_add-to-app.dart';

void main() {
  runApp(FlutterSlideApp());
}

class FlutterSlideApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add-to-App 經驗分享",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.cyan,
          ),
          headline2: TextStyle(
            color: Colors.cyan,
          ),
          headline4: TextStyle(
            color: Colors.blueGrey,
          ),
          subtitle1: TextStyle(
            color: Colors.blueGrey,
          ),
          bodyText1: TextStyle(
            color: Colors.blueGrey,
            fontSize: 24,
          ),
          bodyText2: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ),
      home: SlideShowPage(),
    );
  }
}

class SlideShowPage extends StatefulWidget {
  @override
  _SlideShowPageState createState() => _SlideShowPageState();
}

class _SlideShowPageState extends State<SlideShowPage> {
  PageController _controller;

  GlobalKey<PageIndicatorState> _pageIndicatorGlobalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {

    Widget contentArea = Container(
      child: GestureDetector(
        onTap: _onNextPage,
        onLongPress: _onPreviousPage,
        child: PageView(
          controller: _controller,
          children: _totalPages,
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          contentArea,
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: PageIndicator(
              key: _pageIndicatorGlobalKey,
              totalPage: _totalPages.length,
              currentPage: () => _currentPage(),
              onClickFirstPage: _onFirstPage,
              onClickPreviousPage: _onPreviousPage,
              onClickNextPage: _onNextPage,
              onClickLastPage: _onLastPage,
            ),
          ),
        ],
      ),
    );
  }

  bool _controllerNotReady() => _controller == null || !_controller.hasClients;

  int _currentPage() =>
      _controllerNotReady() ? 0 : _controller.page?.toInt() ?? 0;

  _onNextPage() => _goPage(_currentPage() + 1);

  _onPreviousPage() => _goPage(_currentPage() - 1);

  _onLastPage() => _goPage(_totalPages.length - 1);

  _onFirstPage() => _goPage(0);

  _goPage(int page) {
    if (_controllerNotReady()) {
      return;
    }
    _controller.jumpToPage(
      page,
      // duration: Duration(milliseconds: 500),
      // curve: Curves.decelerate,
    );
    _pageIndicatorGlobalKey.currentState.updateDisplayPage(page);
  }

  final _totalPages = [
    CoverPage(),
    AboutFlutterPage(),
    AddToAppIntroductionPage(),
    AddToAppOptionsPage(),
    AddToAppNoticePage(),
    MyRewardsAdPage(),
    MyRewardsBackgroundPage(),
    Security(),
    MyRewardsFlutterNow(),
    Tips1(),
    QA(),
  ];
}
