import 'package:art_in_hair/presentation/responsive/responsive_widget.dart';
import 'package:art_in_hair/presentation/responsive/tablet/header_tablet.dart';
import 'package:art_in_hair/presentation/responsive/web/header_web.dart';
import 'package:flutter/material.dart';

import '../mobile/header_mobile.dart';

class HeaderTogetherMobileTabletWeb extends StatelessWidget {
  const HeaderTogetherMobileTabletWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      title: Row(
        children: [
          ResponsiveWidget.isLargeScreen(context)
              ? const HeaderWeb()
              : ResponsiveWidget.isMediumScreen(context)
                  ? const HeaderTablet()
                  : const Expanded(child: HeaderMobile()),
        ],
      ),
    );
  }
}
