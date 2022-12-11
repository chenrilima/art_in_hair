import 'package:art_in_hair/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../core/device_information.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
    required this.page,
  }) : super(key: key);

  final Widget? page;

  @override
  State<Header> createState() => _HomePageState();
}

class _HomePageState extends State<Header> {
  late DeviceType device;

  @override
  Widget build(BuildContext context) {
    double screenPerimeter = DeviceInformation.screenPerimeter(context);
    device = DeviceInformation.getDevice(context);

    return device == DeviceType.mobile
        ? Scaffold(
            appBar: AppBar(
              title: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: screenPerimeter * 0.008),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: screenPerimeter * 0.015,
                      width: screenPerimeter * 0.015,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: AppTheme.colors.lightGreen)),
                      child: Icon(
                        Icons.menu_rounded,
                        color: AppTheme.colors.lightGreen,
                      ),
                    )
                  ],
                ),
              ),
            ),
            backgroundColor: AppTheme.colors.lightGreen,
            body: widget.page,
          )
        : device == DeviceType.tablet
            ? Scaffold(
                appBar: AppBar(
                  backgroundColor: AppTheme.colors.red,
                  centerTitle: true,
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: screenPerimeter * 0.005,
                        ),
                        child: const Text('Tablet'),
                      ),
                    ],
                  ),
                ),
                backgroundColor: AppTheme.colors.red,
                body: widget.page,
              )
            : Scaffold(
                appBar: AppBar(
                  backgroundColor: AppTheme.colors.grey,
                  centerTitle: true,
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          right: screenPerimeter * 0.005,
                        ),
                        child: const Text('Web'),
                      ),
                    ],
                  ),
                ),
                backgroundColor: AppTheme.colors.grey,
                body: widget.page,
              );
  }
}
