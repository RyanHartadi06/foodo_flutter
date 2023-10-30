import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:boilerplate_flutter/constants/duration.dart';
import 'package:boilerplate_flutter/constants/colors.dart';
import 'package:boilerplate_flutter/data/local/session.dart';
import 'package:boilerplate_flutter/routes/route_names.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // _navigateNext();
  }

  // _navigateNext() async {
  //   final isSignedIn = await Session.checkIsSignedIn();

  //   await Future.delayed(splashDuration);

  //   if (isSignedIn) {
  //     Get.offAllNamed(RouteNames.homeScreen);
  //   } else {
  //     Get.offAllNamed(RouteNames.signInScreen);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Image.asset(
        'assets/images/splash.jpg',
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
