import 'package:flutter/cupertino.dart';

import '../../presentation/pages/hair_home_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    "/hairhomepage": (context) => const HairHomePage(),
    // "/whoweare": (context) => const WhoWeAre(),
  };
}
