import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

List<BannerModel> listBanners = [
  BannerModel(imagePath: 'assets/images/splash_1.png', id: "1"),
  BannerModel(imagePath: "assets/images/splash_2.png", id: "2"),
  BannerModel(imagePath: "assets/images/splash_3.png", id: "3"),
];

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: Checkbox.width),
              padding: const EdgeInsets.only(top: Checkbox.width / 2),
              height: Checkbox.width * 5.4,
              // width: double.infinity,
              // color: Colors.cyanAccent,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "TOKOTO",
                    style: TextStyle(
                      fontSize: 38,
                      color: Color(0xFFFD7643),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "Welcome to Tokoto, Let\'s shop!",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      // fontWeight: FontWeight.w700,
                    ),
                    // textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: Checkbox.width * 8),
                // color: Colors.limeAccent,
                height: Checkbox.width * 29,
                alignment: Alignment.center,
                child: BannerCarousel(
                  height: Checkbox.width * 20,
                  width: Checkbox.width * 17,
                  disableColor: Colors.black12,
                  activeColor: const Color(0xFFFD7643),
                  customizedIndicators: const IndicatorModel.animation(
                    width: Checkbox.width / 2.5,
                    height: Checkbox.width / 2.5,
                    spaceBetween: Checkbox.width / 8,
                    widthAnimation: Checkbox.width,
                    spaceBetweenAnimation: Checkbox.width / 8,
                  ),
                  customizedBanners: [
                    Padding(
                      padding: const EdgeInsets.all(33.2),
                      child: Image.asset('assets/images/splash_1.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset('assets/images/splash_2.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(23.0),
                      child: Image.asset('assets/images/splash_3.png'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: Checkbox.width * 5.5,
              // color: Colors.green,
              alignment: Alignment.topCenter,
              // padding: const EdgeInsets.only(top: Checkbox.width / 4),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFD7643),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  fixedSize: const Size(
                    Checkbox.width * 19.5,
                    Checkbox.width * 3,
                  ),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
