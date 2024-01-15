import 'package:flutter/material.dart';
import 'package:flutter_getx/modules/home/controller/home_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_getx/constants/duration.dart';
import 'package:flutter_getx/constants/colors.dart';
import 'package:flutter_getx/data/local/session.dart';
import 'package:flutter_getx/routes/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
    _navigateNext();
  }

  _navigateNext() async {
    // final isSignedIn = await Session.checkIsSignedIn();

    await Future.delayed(splashDuration);

    // if (isSignedIn) {
    //   Get.offAllNamed(RouteNames.homeScreen);
    // } else {
    Get.offAllNamed(RouteNames.onBoardingScreen);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/illustrations/bg-splash-screen.png'),
              fit: BoxFit.cover),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/illustrations/logo.png',
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
