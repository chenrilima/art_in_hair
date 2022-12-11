import 'package:flutter/cupertino.dart';

enum DeviceType { mobile, tablet, web }

class DeviceInformation {
  static double screenPerimeter(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenPerimeter = ((screenWidth * 2) + (screenHeight * 2));
    return screenPerimeter;
  }

  static DeviceType getDevice(BuildContext context) {
    if (MediaQuery.of(context).size.width <= 499) {
      return DeviceType.mobile;
    } else if (MediaQuery.of(context).size.width >= 500 &&
        MediaQuery.of(context).size.width <= 999) {
      return DeviceType.tablet;
    } else {
      return DeviceType.web;
    }
  }
}
