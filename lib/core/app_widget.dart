import 'package:flutter/material.dart';

import '../presentation/pages/hair_home.dart';
import '../presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.route: (context) => const HomePage(),
        HairHome.route: (context) => const HairHome(),
      },
    );
  }
}
