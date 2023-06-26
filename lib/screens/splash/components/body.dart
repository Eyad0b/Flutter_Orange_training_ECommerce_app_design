import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import '../../welcomeBack/welcome_back_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: Checkbox.width),
            padding: const EdgeInsets.only(top: Checkbox.width / 1.7),
            height: Checkbox.width * 5.4,
            width: double.infinity,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "TOKOTO",
                  style: TextStyle(
                    fontSize: 38,
                    color: Color(0xFFFD7643),
                    fontWeight: FontWeight.bold,
                    fontFamily: "muli",
                  ),
                ),
                Text(
                  "Welcome to Tokoto, Let\'s shop!",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45,
                    fontFamily: "muli",
                    // fontWeight: FontWeight.w700,
                  ),
                  // textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: Checkbox.width * 6),
            height: Checkbox.width * 29,
            alignment: Alignment.center,
            child: BannerCarousel(
              height: Checkbox.width * 19.2,
              width: Checkbox.width * 17.35,
              disableColor: Colors.black12,
              activeColor: const Color(0xFFFD7643),
              customizedIndicators: const IndicatorModel.animation(
                width: Checkbox.width / 2.5,
                height: Checkbox.width / 2.5,
                spaceBetween: Checkbox.width / 8,
                widthAnimation: Checkbox.width * 1.2,
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
          Container(
            height: Checkbox.width * 5.5,
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(bottom: Checkbox.width / 6),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WelcomeBackScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFD7643),
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(23),
                  ),
                ),
                fixedSize: Size(width * .89, Checkbox.width * 3.2),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(
                  color: Color(0xFDF1ECFF),
                  fontSize: Checkbox.width * 1.15,
                  // fontWeight: FontWeight.w700,
                  fontFamily: "muli",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
