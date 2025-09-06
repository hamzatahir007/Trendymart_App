import 'package:flutter/material.dart';
import 'package:trendymart/domain/constants/appcolors.dart';
import 'package:trendymart/repository/widgets/uihelper.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  TextEditingController searchController = TextEditingController();

  var items = [
    {"img": "milk.png", "text": "Amul Taaza Toned Fresh Milk"},
    {"img": "potato.png", "text": "Potato (Aloo)"},
    {"img": "tomato.png", "text": "Hybrid Tomato"},
    {"img": "tomato.png", "text": "sfsdfsd Tomato"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UiHelper.CustomText(
                      text: "Trendy Mart",
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                      fontsize: 15,
                      fontfamily: "bold",
                    ),
                    SizedBox(height: 5),
                    UiHelper.CustomText(
                      text: "16 minutes",
                      color: Colors.black,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                      fontfamily: "bold",
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        UiHelper.CustomText(
                          text: "HOME ",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                        UiHelper.CustomText(
                          text: "- Johar, Sindh, Karachi (Hamza)",
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 20,
                right: 20,
                child: UiHelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
          SizedBox(height: 20),
          UiHelper.CustomImage(img: "cart.png"),
          SizedBox(height: 20),
          UiHelper.CustomText(
            text: "Reordering will be easy",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontfamily: "bold",
          ),
          UiHelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          UiHelper.CustomText(
            text: "them again easily.",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: UiHelper.CustomText(
                text: "Bestsellers",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamily: "bold",
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 220, // Set height for horizontal list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  // color: AppColors.red,
                  margin: EdgeInsets.only(right: 15), // space between items
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 108,
                        width: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: UiHelper.CustomImage(
                          img: items[index]["img"].toString(),
                        ),
                      ),
                      SizedBox(height: 5),
                      UiHelper.CustomText(
                        text: items[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontsize: 10,
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          UiHelper.CustomImage(img: "timer 4.png"),
                          SizedBox(width: 5),
                          UiHelper.CustomText(
                            text: "16 MINS",
                            color: Color(0XFF9C9C9C),
                            fontweight: FontWeight.normal,
                            fontsize: 10,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          UiHelper.CustomImage(img: "image 50 (1).png"),
                          SizedBox(width: 5),
                          UiHelper.CustomText(
                            text: "79",
                            color: Color(0XFF9C9C9C),
                            fontweight: FontWeight.bold,
                            fontsize: 12,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
