import 'package:flutter/material.dart';

class RoundedAssetImage extends StatelessWidget {
  final String assetName;
  final double radiusSize;
  final double width;
  final double height;

  RoundedAssetImage({
    this.assetName,
    this.radiusSize = 16,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radiusSize),
        image: DecorationImage(image: AssetImage(assetName)),
      ),
    );
  }
}

class AppScreenshotImage extends RoundedAssetImage {
  AppScreenshotImage({String assetName})
      : super(
          width: 216,
          height: 456,
          assetName: assetName,
          radiusSize: 16,
        );
}
