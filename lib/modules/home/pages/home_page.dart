import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/colors.dart';
import 'package:flutter_getx/modules/home/widgets/item_hot_spots.dart';
import 'package:flutter_getx/modules/home/widgets/item_menu.dart';
import 'package:flutter_getx/modules/home/widgets/item_super_food.dart';

class FoodItem {
  final String image, title;

  FoodItem({
    required this.image,
    required this.title,
  });
}

final List<FoodItem> foodItems = [
  FoodItem(
    image: "assets/illustrations/burger.png",
    title: "Burger",
  ),
  FoodItem(
    image: "assets/illustrations/pizza.png",
    title: "Pizza",
  ),
  FoodItem(
    image: "assets/illustrations/meat.png",
    title: "Meat",
  ),
  FoodItem(
    image: "assets/illustrations/ice-cream.png",
    title: "Ice Cream",
  ),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _switchVal = true;
  final animationDuration = const Duration(milliseconds: 500);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEAEAEA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Deliver now",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Madni Town",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _switchVal = !_switchVal;
                            });
                          },
                          child: AnimatedContainer(
                            height: 40,
                            width: 70,
                            duration: animationDuration,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:
                                  _switchVal ? black : const Color(0xFFF3F3F3),
                              border: Border.all(color: Colors.white, width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade400,
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: AnimatedAlign(
                              duration: animationDuration,
                              alignment: _switchVal
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _switchVal
                                        ? Colors.white
                                        : Colors.black,
                                    image: DecorationImage(
                                      image: _switchVal
                                          ? const AssetImage(
                                              "assets/illustrations/people.png")
                                          : const AssetImage(
                                              "assets/illustrations/briefcase.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ItemMenu(
                        image: "assets/illustrations/burger.png",
                        title: "Burger",
                      ),
                      SizedBox(width: 10),
                      ItemMenu(
                        image: "assets/illustrations/pizza.png",
                        title: "Pizza",
                      ),
                      SizedBox(width: 10),
                      ItemMenu(
                        image: "assets/illustrations/meat.png",
                        title: "Meat",
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text(
                      "Featured on Super Foodoo",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ItemSuperFood(),
                      SizedBox(
                        width: 15,
                      ),
                      ItemSuperFood(),
                      SizedBox(
                        width: 15,
                      ),
                      ItemSuperFood(),
                      SizedBox(
                        width: 15,
                      ),
                      ItemSuperFood(),
                      SizedBox(
                        width: 15,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const Text(
                      "Hot spots",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemHotSpots(),
                    ItemHotSpots(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
