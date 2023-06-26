import 'package:flutter/material.dart';

import '../../home/home_screen.dart';

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
    );
  }
}
