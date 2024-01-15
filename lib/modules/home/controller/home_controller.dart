import 'package:flutter/material.dart';
import 'package:flutter_getx/data/network/response_call.dart';
import 'package:flutter_getx/modules/home/pages/home_page.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<ResponseCall> apiGraph = ResponseCall.loading('loading').obs;
  bool isLoadedBefore = false;
  int _currentPageIndex = 0;
  Rx<ResponseCall> apiArea = ResponseCall.iddle('iddle').obs;
  int get currentPageIndex => _currentPageIndex;

  Widget _displayWidget = const HomePage();

  Widget get displayWidget => _displayWidget;

  switchPage(int index) {
    _currentPageIndex = index;

    switch (index) {
      case 0:
        _displayWidget = const HomePage();
        break;
      case 1:
        _displayWidget = const HomePage();
        break;
      case 3:
        _displayWidget = const HomePage();
        break;
      case 4:
        _displayWidget = const HomePage();
        break;
      default:
        _displayWidget = const HomePage();
    }

    update();
  }
}
