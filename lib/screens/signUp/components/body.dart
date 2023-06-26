import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/screens/completeProfile/complete_profile_screen.dart';

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

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: height * .2,
            padding: const EdgeInsets.only(
                top: Checkbox.width / 1.2, bottom: Checkbox.width / 3),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Register Account",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "muli",
                  ),
                ),
                Text(
                    "Complete your details or continue\nwith social media",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.w700,
                      fontFamily: "muli",
                    ),
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          Container(
            height: height * .536754,
            padding: EdgeInsets.only(
                top: Checkbox.width * 2,
                left: width * .06,
                right: width * .06),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Checkbox.width * 3.7,
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
                          semanticsLabel: 'Google Logo',
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
                const SizedBox(height: Checkbox.width * 1.65),
                SizedBox(
                  height: Checkbox.width * 3.7,
                  child: TextField(
                    decoration: InputDecoration(
                      focusColor: const Color(0xFFFD7643),
                      // padding around hint
                      contentPadding: const EdgeInsets.only(
                          left: 35, bottom: 23, top: 23),
                      hintText: 'Enter your password',
                      labelText: 'Password',
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
                            color: Color(0xFFFD7643), width: 2),
                      ),
                      // Make labelText visible all time
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      // Add icon in right side
                      suffixIcon: Container(
                        padding: const EdgeInsets.only(
                            right: Checkbox.width * 1.2),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SvgPicture.asset(
                            'assets/icons/Lock.svg',
                            semanticsLabel: 'Google Logo',
                          ),
                        ),
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontFamily: "muli",
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide: BorderSide(
                              color: Color(0xFFFD7643), width: 2)),
                    ),
                    cursorColor: const Color(0xFFFD7643),
                  ),
                ),
                const SizedBox(height: Checkbox.width * 1.65),
                SizedBox(
                  height: Checkbox.width * 3.7,
                  child: TextField(
                    decoration: InputDecoration(
                      focusColor: const Color(0xFFFD7643),
                      // padding around hint
                      contentPadding: const EdgeInsets.only(
                          left: 35, bottom: 23, top: 23),
                      hintText: 'Re-enter your password',
                      labelText: 'Confirm Password',
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
                            color: Color(0xFFFD7643), width: 2),
                      ),
                      // Make labelText visible all time
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      // Add icon in right side
                      suffixIcon: Container(
                        padding: const EdgeInsets.only(
                            right: Checkbox.width * 1.2),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SvgPicture.asset(
                            'assets/icons/Lock.svg',
                            semanticsLabel: 'Google Logo',
                          ),
                        ),
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontFamily: "muli",
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide: BorderSide(
                              color: Color(0xFFFD7643), width: 2)),
                    ),
                    cursorColor: const Color(0xFFFD7643),
                  ),
                ),
                const SizedBox(height: Checkbox.width * 2.2),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CompleteProfileScreen()),
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
            // color: Colors.purple,
            height: height * .15,
            padding: EdgeInsets.only(top: height * .035,bottom: height * .002),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: height * .07,
                  margin: EdgeInsets.only(
                      right: width * .23, left: width * .23),
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Material(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: const Color(0xFFF4F5F8),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              'assets/icons/google-icon.svg',
                              width: Checkbox.width / 1.3,
                              height: Checkbox.width / 1.3,
                              semanticsLabel: 'Google Logo',
                            ),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                        child: Ink(
                          decoration: const BoxDecoration(
                            color: Color(0xFFF4F5F8),
                            shape: BoxShape.circle,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: SvgPicture.asset(
                                'assets/icons/facebook-2.svg',
                                width: Checkbox.width / 1.2,
                                height: Checkbox.width / 1.2,
                                semanticsLabel: 'Google Logo',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: const Color(0xFFF4F5F8),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SvgPicture.asset(
                              'assets/icons/twitter.svg',
                              width: Checkbox.width / 1.3,
                              height: Checkbox.width / 1.3,
                              semanticsLabel: 'Google Logo',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'By continuing your confirm that you agree',
                  style: TextStyle(
                    color: Color(0xFFA6A6A6),
                    fontWeight: FontWeight.w700,
                    fontSize: Checkbox.width / 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
