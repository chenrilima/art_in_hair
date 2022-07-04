import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../responsive/responsibles/app_bar_responsible.dart';

class HairHome extends StatelessWidget {
  static const String route = '/quem-somos/';

  const HairHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: HeaderTogetherMobileTabletWeb(),
      ),
    );
  }
}
