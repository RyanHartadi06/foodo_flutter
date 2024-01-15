import 'package:flutter/material.dart';
import 'package:flutter_getx/modules/home/controller/home_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.index,
    required this.label,
    required this.icon,
    required this.activeIcon,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final String label;
  final String icon;
  final String activeIcon;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        width: 72,
        color: white,
        child: GetBuilder<HomeController>(builder: (controller) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                  index == controller.currentPageIndex ? icon : icon),
              const SizedBox(height: 6),
              Text(
                index == controller.currentPageIndex ? label : "",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: index == controller.currentPageIndex
                      ? primaryColor
                      : textDarkGreyColor,
                  fontWeight: index == controller.currentPageIndex
                      ? FontWeight.w500
                      : FontWeight.w400,
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
