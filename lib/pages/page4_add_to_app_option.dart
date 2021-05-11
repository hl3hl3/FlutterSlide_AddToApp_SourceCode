import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_image.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class AddToAppOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageTitle("Add-to-App 方式"),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PointContent("AAR / Framework"),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 64),
                        child: RoundedAssetImage(
                          assetName: "images/img_add2app_option_a.png",
                          radiusSize: 16,
                          width: 600,
                          height: 435,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PointContent("Module's source code"),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 64),
                        child: RoundedAssetImage(
                          assetName: "images/img_add2app_option_b.png",
                          radiusSize: 16,
                          width: 600,
                          height: 435,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
