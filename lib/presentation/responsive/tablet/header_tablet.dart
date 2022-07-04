import 'package:flutter/material.dart';

import '../../../theme/app_fonts.dart';
import '../../../theme/app_images.dart';
import '../../../theme/app_theme.dart';

class HeaderTablet extends StatelessWidget {
  const HeaderTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05, top: 12),
          child: InkWell(
            onTap: () {},
            child: Image.asset(
              AppImages.logoHeader,
              scale: 3.85,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.087, top: 20),
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Produtos'.toUpperCase(),
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
                  'Simulador'.toUpperCase(),
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
                  'Blog'.toUpperCase(),
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
                  'Parceiros'.toUpperCase(),
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
