import 'package:art_in_hair/core/device_information.dart';
import 'package:art_in_hair/presentation/pages/tablet/hair_home_tablet.dart';
import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import 'mobile/hair_home_mobile.dart';
import 'web/hair_home_web.dart';
import 'header.dart';

class HairHomePage extends StatefulWidget {
  const HairHomePage({Key? key}) : super(key: key);

  @override
  State<HairHomePage> createState() => _HairHomePageState();
}

class _HairHomePageState extends State<HairHomePage> {
  late DeviceType device;
  @override
  Widget build(BuildContext context) {
    device = DeviceInformation.getDevice(context);
    return Header(
      page: LayoutBuilder(builder: (context, constraint) {
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraint.maxHeight),
          child: Container(
            color: AppTheme.colors.black,
            child: device == DeviceType.mobile
                ? const HairHomeMobile()
                : device == DeviceType.tablet
                    ? const HairHomeTablet()
                    : const HairHomeWeb(),
          ),
        );
      }),
    );
  }
}
