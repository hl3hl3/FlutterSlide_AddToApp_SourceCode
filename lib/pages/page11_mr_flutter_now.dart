import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_image.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class MyRewardsFlutterNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageTitle("於是 國泰優惠 把 Flutter 用在這裡"),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 48),
                      padding: const EdgeInsets.only(bottom: 12),
                      width: 80,
                      child: Image.asset("images/ic_android.png"),
                    ),
                    AppScreenshotImage(assetName: "images/mr_home.png"),
                  ],
                ),
                SizedBox(width: 48),
                Column(
                  children: [
                    Container(
                      height: 60,
                      margin: const EdgeInsets.only(top: 48),
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Image.asset("images/ic_flutter.png"),
                    ),
                    AppScreenshotImage(assetName: "images/mr_point.png"),
                  ],
                ),
                SizedBox(width: 48),
                Column(
                  children: [
                    Container(
                      height: 60,
                      margin: const EdgeInsets.only(top: 48),
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Image.asset("images/ic_flutter.png"),
                    ),
                    AppScreenshotImage(assetName: "images/mr_point_costco.png"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
