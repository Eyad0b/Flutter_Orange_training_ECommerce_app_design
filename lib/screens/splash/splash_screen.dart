import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/splash/components/body.dart';
import '../welcomeBack/welcome_back_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

List<BannerModel> listBanners = [
  BannerModel(imagePath: 'assets/images/splash_1.png', id: "1"),
  BannerModel(imagePath: "assets/images/splash_2.png", id: "2"),
  BannerModel(imagePath: "assets/images/splash_3.png", id: "3"),
];

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    return const SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Body(),
      ),
    );
  }
}
