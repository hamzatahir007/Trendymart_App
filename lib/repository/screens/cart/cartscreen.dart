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
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Trendy Mart",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "16 minutes",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "HOME ",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                        UiHelper.CustomText(
                          text: "- Johar, Sindh, Karachi (Hamza)",
                          color: Color(0XFF000000),
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
                child: UiHelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
          SizedBox(height: 20),
          UiHelper.CustomImage(img: "cart.png"),
          SizedBox(height: 20),
          UiHelper.CustomText(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontfamily: "bold",
          ),
          UiHelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          UiHelper.CustomText(
            text: "them again easily.",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: "Bestsellers",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 16,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 10),

          // Row(
          //   children: [
          //     SizedBox(width: 20),
          //     Stack(
          //       children: [
          //         UiHelper.CustomImage(img: "milk.png"),
          //         Padding(
          //           padding: EdgeInsets.only(top: 95, left: 65),
          //           child: UiHelper.CustomButton(() {}),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 93,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            height: 108,
                            width: 93,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: UiHelper.CustomImage(
                              img: items[index]["img"].toString(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: UiHelper.CustomText(
                            text: items[index]["text"].toString(),
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 8,
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(right: 40),
                          child: Row(
                            children: [
                              UiHelper.CustomImage(img: "timer 4.png"),
                              UiHelper.CustomText(
                                text: "16 MINS",
                                color: Color(0XFF9C9C9C),
                                fontweight: FontWeight.normal,
                                fontsize: 10,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.only(right: 60),
                          child: Row(
                            children: [
                              UiHelper.CustomImage(img: "image 50 (1).png"),
                              UiHelper.CustomText(
                                text: "79",
                                color: Color(0XFF9C9C9C),
                                fontweight: FontWeight.bold,
                                fontsize: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
