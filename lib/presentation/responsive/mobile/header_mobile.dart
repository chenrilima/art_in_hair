import 'package:flutter/material.dart';

import '../../../theme/app_images.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              AppImages.logoHeader,
              scale: 3.85,
            ),
          ),
        ),
      ],
    );
  }
}
