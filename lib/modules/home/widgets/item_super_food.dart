import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/colors.dart';

class ItemSuperFood extends StatelessWidget {
  const ItemSuperFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 250,
          height: 150,
          decoration: BoxDecoration(
            color: const Color(0xffF2F2F2),
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(
                  "assets/illustrations/burger-meal-with-french.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: 20,
                width: 130,
                margin: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                  color: Color(0xFFffdd22),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Free Item(Spend 10)",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    size: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const Text(
          "McDonald’s(Best Offer)",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "4.99 Delivery Fee . 15-30 min",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        )
      ],
    );
  }
}
