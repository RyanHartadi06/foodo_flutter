import 'package:boilerplate_flutter/config/theme.dart';
import 'package:boilerplate_flutter/constants/colors.dart';
import 'package:boilerplate_flutter/routes/app_pages.dart';
import 'package:boilerplate_flutter/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // set default status bar color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  // set system orientation
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Intl.defaultLocale = 'id_ID';
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PLJ ABSENSI Mobile',
      theme: themeData,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
      initialRoute: RouteNames.splashScreen,
    );
  }
}
