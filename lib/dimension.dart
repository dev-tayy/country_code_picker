import 'package:flutter/material.dart';

double screenAwareSize(int size, BuildContext context) {
  const baseHeight = 640;
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class SizeConfig {
  static late MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

// Get the proportionate height as per screen size
double getScreenHeight(double inputHeight) {
  final screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 896.0) * screenHeight!;
  //896 is the height used in the UI
}

// Get the proportionate height as per screen size
double getScreenWidth(double inputWidth) {
  final screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 414.0) * screenWidth!;
  //414 is the width used in the UI
}
