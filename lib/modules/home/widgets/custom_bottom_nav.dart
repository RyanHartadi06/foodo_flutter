import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/colors.dart';
import 'package:flutter_getx/modules/home/controller/home_controller.dart';
import 'package:flutter_getx/modules/home/widgets/nav_item.dart';
import 'package:get/get.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  final _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(
            index: 0,
            label: '📀',
            icon: 'assets/icons/beranda.svg',
            activeIcon: 'assets/icons/beranda-active.svg',
            onTap: (index) => _homeController.switchPage(index),
          ),
          NavItem(
            index: 1,
            label: '📀',
            icon: 'assets/icons/aktivitas.svg',
            activeIcon: 'assets/icons/aktivitas-active.svg',
            onTap: (index) => _homeController.switchPage(index),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.swap_horizontal_circle_rounded),
              backgroundColor: primaryColor,
            ),
          ),
          NavItem(
            index: 3,
            label: '📀',
            icon: 'assets/icons/notifikasi.svg',
            activeIcon: 'assets/icons/notifikasi-active.svg',
            onTap: (index) => _homeController.switchPage(index),
          ),
          NavItem(
            index: 4,
            label: '📀',
            icon: 'assets/icons/akun.svg',
            activeIcon: 'assets/icons/akun-active.svg',
            onTap: (index) => _homeController.switchPage(index),
          ),
        ],
      ),
    );
  }
}
