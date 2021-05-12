import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_image.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class AddToAppIntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Wrap(
        direction: Axis.vertical,
        children: [
          PageTitle("Add-to-App"),
          Subtitle("Add2App / Add Flutter to existing app"),

          Padding(
            padding: const EdgeInsets.only(left: 48, top: 24),
            child: RoundedAssetImage(
              width: 864,
              height: 357,
              assetName: "images/img_official_add2app.png",
            ),
          ),

          Point("Android：FlutterActivity / FlutterFragment "),
          Point("iOS：FlutterViewController"),
        ],
      ),
    );
  }
}
