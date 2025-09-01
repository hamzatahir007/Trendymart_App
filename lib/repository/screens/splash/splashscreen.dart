import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:trendymart/domain/constants/appcolors.dart';
import 'package:trendymart/repository/screens/login/loginScreen.dart';
import 'package:trendymart/repository/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldbackgroud,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/trendymartlogo.png'),
              width: 300, // set your desired width
              height: 300, // set your desired height
              fit: BoxFit.contain,
            ),
            // UiHelper.CustomImage(img: "trendymartlogo.png"),
          ],
        ),
      ),
    );
  }
}
