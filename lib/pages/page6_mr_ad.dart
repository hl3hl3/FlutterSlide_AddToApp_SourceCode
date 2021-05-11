import 'package:flutter/material.dart';
import 'package:flutter_addtoapp/pages/slide_page.dart';
import 'package:flutter_addtoapp/styles/styled_image.dart';
import 'package:flutter_addtoapp/styles/styled_text.dart';

class MyRewardsAdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidePage(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageTitle("國泰優惠－最懂你的生活金融APP"),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Paragraph("《國泰優惠》五大特色功能，讓您聰明享樂一指搞定！"
                    "\n1.【小樹點全新上線】小樹點(Tree Points)為國泰優惠全新點數服務，價值等同現金，提供您輕鬆兌換商品以及更多元的累積、兌換點數方式。"
                    "\n2.【優選服務】加油停車、美食訂位、網路購物等多項生活服務，快速找到最適合您的優惠需求。"
                    "\n3.【卡友服務】「卡友活動登錄」、「信用卡開卡」和「消費通知提醒」等超多貼心服務，權益好康不漏接。還能查詢各種信用卡點數，再也不用擔心「紅利點數」、「台塑加油金」點數過期。"
                    "\n4.【附近好康】卡友專屬特約店家、加油停車優惠一目了然，提供GPS定位功能，讓您優惠隨身帶。"
                    "\n5.【專屬優惠】會員限定驚喜抽獎、折價券等超多精選優惠活動不能錯過！"
                    "\n現在就立即下載《國泰優惠》APP吧！"),
              ),
              SizedBox(width: 24),
              Image.asset("images/mr_qrcode.png", width: 200),
            ],
          ),
          SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              AppScreenshotImage(assetName: "images/mr_home.png"),
              SizedBox(width: 16),
              AppScreenshotImage(assetName: "images/mr_exchange.png"),
              SizedBox(width: 16),
              AppScreenshotImage(assetName: "images/mr_card.png"),
              SizedBox(width: 16),
              AppScreenshotImage(assetName: "images/mr_point.png"),
              SizedBox(width: 16),
              AppScreenshotImage(assetName: "images/mr_treemall.png"),
              SizedBox(width: 16),
              AppScreenshotImage(assetName: "images/mr_coupon.png"),
            ]),
          ),
        ],
      ),
    );
  }
}
