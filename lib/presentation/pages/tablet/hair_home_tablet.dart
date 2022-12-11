import 'package:art_in_hair/core/device_information.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class HairHomeTablet extends StatefulWidget {
  const HairHomeTablet({Key? key}) : super(key: key);

  @override
  State<HairHomeTablet> createState() => _HairHomeState();
}

class _HairHomeState extends State<HairHomeTablet> {
  late DeviceType device;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.lightGreen,
    );
  }
}
