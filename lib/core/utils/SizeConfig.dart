import 'package:flutter/material.dart';



class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static Orientation? orientation;

  static double shortDimension = 0;
  static double longDimension = 0;

  static const _guidelineBaseWidth = 350;
  // static const _guidelineBaseHeight = 680;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);

    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;

    shortDimension = screenWidth < screenHeight ? screenWidth : screenHeight;

    longDimension = screenWidth < screenHeight ? screenHeight : screenWidth;
  }
  static double scale(double size) {
    return SizeConfig.shortDimension / SizeConfig._guidelineBaseWidth * size;
  }
}

// Get the proportionate height as per screen size
double getScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

Size getPreferredSize({double height = 85}) {
  return Size.fromHeight(height);
}


