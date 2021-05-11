import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_image.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class AddToAppNoticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Wrap(
        direction: Axis.vertical,
        children: [
          PageTitle("Add-to-App 記得考慮"),

          Padding(
            padding: const EdgeInsets.only(left: 48, top: 24),
            child: RoundedAssetImage(
              radiusSize: 16,
              width: 864,
              height: 357,
              assetName: "images/img_official_add2app.png",
            ),
          ),

          Point("功能切分"),
          Point("頁面切換流暢度"),
          Point("Platform Channel 使用管理"),
          Point("穩定性 ＆ 維護成本"),
        ],
      ),
    );
  }
}
