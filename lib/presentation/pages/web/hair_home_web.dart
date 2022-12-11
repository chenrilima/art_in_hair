import 'package:art_in_hair/core/device_information.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class HairHomeWeb extends StatefulWidget {
  const HairHomeWeb({Key? key}) : super(key: key);

  @override
  State<HairHomeWeb> createState() => _HairHomeState();
}

class _HairHomeState extends State<HairHomeWeb> {
  late DeviceType device;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.grey,
    );
  }
}
