import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../signUp/signup_screen.dart';
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
    double height = MediaQuery.of(context).size.height;

    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: height * .2,
            padding: const EdgeInsets.only(
                top: Checkbox.width / 2, bottom: Checkbox.width / 2.5),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "muli",
                  ),
                ),
                Text(
                    "Please enter your email and we will send\nyou a link to your account",
                    style: TextStyle(
                      fontSize: 14.5,
                      color: Colors.black45,
                      fontWeight: FontWeight.w700,
                      fontFamily: "muli",
                    ),
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          Container(
            height: height * .46,
            padding: EdgeInsets.only(top: Checkbox.width * 2.7,left: width * .06, right: width * .06),
            child: Column(
              children: [
                SizedBox(
                  height: Checkbox.width * 3.8,
                  child: TextField(
                    decoration: InputDecoration(
                      // padding around hint
                      contentPadding: const EdgeInsets.only(
                          left: 35, bottom: 23, top: 23),
                      hintText: 'Enter your email',
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w700,
                        fontFamily: "muli",
                      ),
                      // Add border around text filed
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(27),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xFFFD7643),
                          width: 2,
                        ),
                      ),
                      // Make labelText visible all time
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      // Add icon in right side
                      suffixIcon: Container(
                        padding: const EdgeInsets.only(
                          right: Checkbox.width * 1.2,
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/Mail.svg',
                          semanticsLabel: 'Mail Logo',
                        ),
                      ),
                      hintStyle: const TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                        fontWeight: FontWeight.w700,
                        fontFamily: "muli",
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        borderSide: BorderSide(
                          color: Color(0xFFFD7643),
                          width: 2,
                        ),
                      ),
                    ),
                    cursorColor: const Color(0xFFFD7643),
                  ),
                ),
                const SizedBox(height: Checkbox.width * 6.1),
                ElevatedButton(
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
                        Radius.circular(20),
                      ),
                    ),
                    fixedSize: Size(width * .86, Checkbox.width * 3.2),
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
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: Checkbox.width * 3.5,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: Checkbox.width * 1.2),
            // margin: EdgeInsets.only(bottom: Checkbox.width / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: Checkbox.width,
                ),
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: Checkbox.width ,
                    color: Colors.black45,
                    fontWeight: FontWeight.w700,
                    fontFamily: "muli",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xFFFD7643),
                      fontSize: Checkbox.width ,
                      fontWeight: FontWeight.w700,
                      fontFamily: "muli",
                    ),
                  ),
                ),
                const SizedBox(
                  width: Checkbox.width,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
