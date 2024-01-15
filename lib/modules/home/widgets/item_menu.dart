import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/colors.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({super.key, required this.image, required this.title});

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 130,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
