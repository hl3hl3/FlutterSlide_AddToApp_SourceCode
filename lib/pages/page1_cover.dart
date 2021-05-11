import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_image.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class CoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.end,
              children: [
                TextSlideTitle("Add-to-App 經驗分享"),
                SizedBox(height: 16),
                BodyText1("2021/05/12 Flutter Night"),
                Container(
                  width: 80,
                  height: 8,
                  margin: const EdgeInsets.only(top: 16, bottom: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.orangeAccent,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedAssetImage(
                      width: 140,
                      height: 140,
                      radiusSize: 70,
                      assetName: "images/ic_rebecca.jpeg",
                    ),
                    SizedBox(height: 24),
                    BodyText1("Rebecca Hsieh"),
                  ],
                ),
                SizedBox(width: 48),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BodyText1("Android Developer | Flutter Developer"),
                    BodyText2("Java | Kotlin | Dart"),
                    SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          padding: const EdgeInsets.only(
                              top: 10, right: 10, bottom: 10),
                          child: Image.asset("images/ic_play_mark.png"),
                        ),
                        TextUrl(
                            "https://play.google.com/store/apps/developer?id=hl3hl3"),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 52,
                          height: 52,
                          padding: const EdgeInsets.only(
                              top: 10, right: 10, bottom: 10),
                          child: Image.asset("images/ic_github_mark.png"),
                        ),
                        TextUrl("https://github.com/hl3hl3"),
                      ],
                    ),
                    // Container(
                    //   width: 180,
                    //   padding: const EdgeInsets.all(8),
                    //   child: Image.asset("images/ic_flutter_taipei_480.png"),
                    // )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
