import 'package:flutter_getx/constants/duration.dart';
import 'package:flutter_getx/modules/auth/signin_screen.dart';
import 'package:flutter_getx/modules/home/home_screen.dart';
import 'package:flutter_getx/modules/onboarding/onboarding_screen.dart';
import 'package:flutter_getx/routes/route_names.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/modules/splash/splash_screen.dart';

class AppPages {
  static final pages = [
    // * AUTH
    GetPage(
      name: RouteNames.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteNames.onBoardingScreen,
      page: () => const OnBoardingScreen(),
      curve: Curves.easeInOut,
      transition: Transition.rightToLeft,
      transitionDuration: defaultDuration,
    ),
    GetPage(
      name: RouteNames.signInScreen,
      page: () => const AuthLoginScreen(),
      curve: Curves.easeInOut,
      transition: Transition.rightToLeft,
      transitionDuration: defaultDuration,
    ),
    GetPage(
      name: RouteNames.homeScreen,
      page: () => const HomeScreen(),
      curve: Curves.easeInOut,
      transition: Transition.rightToLeft,
      transitionDuration: defaultDuration,
    ),
  ];
}
