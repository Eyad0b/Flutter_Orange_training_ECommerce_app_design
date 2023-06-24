import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/home_screen.dart';

class LogInSuccessScreen extends StatefulWidget {
  const LogInSuccessScreen({super.key});

  @override
  State<LogInSuccessScreen> createState() => _LogInSuccessScreenState();
}

List<BannerModel> listBanners = [
  BannerModel(imagePath: 'assets/images/splash_1.png', id: "1"),
  BannerModel(imagePath: "assets/images/splash_2.png", id: "2"),
  BannerModel(imagePath: "assets/images/splash_3.png", id: "3"),
];

class _LogInSuccessScreenState extends State<LogInSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Login Success',
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w800,
              fontFamily: "muli",
            ),
          ),
          titleSpacing: Checkbox.width * 4,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: Checkbox.width * 4,
                  bottom: Checkbox.width * 4,
                  // right: Checkbox.width / 2,
                  // left: Checkbox.width / 2,
                ),
                height: Checkbox.width * 25,
                // alignment: Alignment.center,
                child: Image.asset('assets/images/success.png', height: Checkbox.width * 4, width: double.infinity, fit: BoxFit.fill),
              ),
              Container(
                height: Checkbox.width * 3,
                alignment: Alignment.center,
                child: const Text(
                  "Login Success",
                  style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: "muli",
                  ),
                ),
              ),
              Container(
                height: Checkbox.width * 10,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: Checkbox.width),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
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
                    fixedSize: Size(width * .55, Checkbox.width * 3.2),
                  ),
                  child: const Text(
                    "Back to home",
                    style: TextStyle(
                      color: Color(0xFDF1ECFF),
                      fontSize: Checkbox.width * 1.1,
                      // fontWeight: FontWeight.w700,
                      fontFamily: "muli",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
