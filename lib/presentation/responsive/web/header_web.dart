import 'package:flutter/material.dart';

import '../../../theme/app_fonts.dart';
import '../../../theme/app_images.dart';
import '../../../theme/app_theme.dart';

class HeaderWeb extends StatelessWidget {
  const HeaderWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.145, top: 10),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.asset(
              filterQuality: FilterQuality.high,
              AppImages.iconArtInHair,
              scale: 3.85,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.117, top: 20),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Cabelos'.toUpperCase(),
                  style: AppTheme.textStyles.styleText(
                    TypeFont.barlowBold,
                    AppTheme.colors.white,
                    16,
                    FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Quem somos'.toUpperCase(),
                  style: AppTheme.textStyles.styleText(
                    TypeFont.barlowBold,
                    AppTheme.colors.white,
                    16,
                    FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Cursos'.toUpperCase(),
                  style: AppTheme.textStyles.styleText(
                    TypeFont.barlowBold,
                    AppTheme.colors.white,
                    16,
                    FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
