import 'package:art_in_hair/core/navigator/app_routes.dart';
import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_scroll_behavior.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScrollBehavior(),
      theme: ThemeData.light().copyWith(
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(AppTheme.colors.lightGreen),
          thumbVisibility: MaterialStateProperty.all(true),
          radius: const Radius.circular(5),
          thickness: const MaterialStatePropertyAll(5),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      initialRoute: "/hairhomepage",
    );
  }
}
