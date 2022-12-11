import 'package:art_in_hair/core/device_information.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class HairHomeMobile extends StatefulWidget {
  const HairHomeMobile({Key? key}) : super(key: key);

  @override
  State<HairHomeMobile> createState() => _HairHomeState();
}

class _HairHomeState extends State<HairHomeMobile> {
  late DeviceType device;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.red,
    );
  }
}
