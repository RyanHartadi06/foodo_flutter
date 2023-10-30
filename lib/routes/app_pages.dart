import 'package:boilerplate_flutter/routes/route_names.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boilerplate_flutter/modules/splash/splash_screen.dart';

class AppPages {
  static final pages = [
    // * AUTH
    GetPage(
      name: RouteNames.splashScreen,
      page: () => const SplashScreen(),
    ),
  ];
}
