import 'package:flutter/material.dart';
import 'package:trendymart/domain/constants/appcolors.dart';
import 'package:trendymart/repository/widgets/uihelper.dart';
import 'package:trendymart/repository/screens/bottomnav/bottomnavscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
            SizedBox(height: 30),
            UiHelper.CustomImage(img: "image 10.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: 'Pak ecommerce app',
              color: AppColors.black,
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold",
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    UiHelper.CustomText(
                      text: "Sujal",
                      color: AppColors.black,
                      fontweight: FontWeight.w500,
                      fontsize: 14,
                    ),
                    SizedBox(height: 5),
                    UiHelper.CustomText(
                      text: "78720XXXXX",
                      color: AppColors.gray,
                      fontweight: FontWeight.bold,
                      fontsize: 14,
                      fontfamily: 'bold',
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                              text: 'Login with',
                              color: AppColors.white,
                              fontweight: FontWeight.bold,
                              fontsize: 14,
                              fontfamily: 'bold',
                            ),
                            SizedBox(width: 5),
                            UiHelper.CustomImage(img: "google.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    UiHelper.CustomText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: AppColors.gray,
                      fontweight: FontWeight.normal,
                      fontsize: 10,
                    ),
                    SizedBox(height: 15),
                    UiHelper.CustomText(
                      text: "or login with phone number",
                      color: AppColors.green,
                      fontweight: FontWeight.normal,
                      fontsize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
