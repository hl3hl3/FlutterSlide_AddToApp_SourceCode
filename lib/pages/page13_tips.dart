import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class Tips1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageTitle("給技術導入者的建議"),
          Subtitle("推動者的角色：Top down / Bottom up"),

          Subtitle("新專案導入：技術選型 → 執行 → 成果擴散"),
          Subtitle("既有專案導入："),
          Point("環境評估"),
          Padding(
            padding: const EdgeInsets.only(left: 48, top: 16),
            child: BodyText1("團隊承受能力：工程師同事的支持 / 團隊資源分配"
                "\n既有專案狀態是否有辦法掌握（重寫/逐步引用）"),
          ),
          Point("自我修養"),
          Padding(
            padding: const EdgeInsets.only(left: 48, top: 16),
            child: BodyText1("誠懇 / 尊重 / 安全感"
                "\n做球 / 感恩 / 不搶功"
                "\n創造成就感，形成正向循環"),
          ),
        ],
      ),
    );
  }
}
