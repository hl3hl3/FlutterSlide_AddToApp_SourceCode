import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class MyRewardsBackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Wrap(
        direction: Axis.vertical,
        children: [
          PageTitle("Add Flutter to 國泰優惠"),
          Point("導入 Flutter 時間：2019"),
          Point("AAR / Framework → Flutter module source code"),
          Point("Flutter SDK channel ＆ version"),
          Point("Flutter 與 原生 溝通機制與介面實作"),
          Point("Pre warm engine"),
          Point("CI/CD Flutter 環境與執行階段"),
          Point("各種踩雷"),
          Padding(
            padding: const EdgeInsets.only(left: 48, top: 16),
            child: BodyText1("iOS 從原生切到 Flutter 時會閃過 launch screen"
                "\nAndorid 於 Flutter 元件繪製時畫面仍不存在，導致畫面渲染出錯"),
          ),
        ],
      ),
    );
  }
}
