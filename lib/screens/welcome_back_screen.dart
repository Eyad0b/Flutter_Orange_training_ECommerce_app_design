import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled1/screens/signup_screen.dart';

class WelcomeBackScreen extends StatefulWidget {
  const WelcomeBackScreen({super.key});

  @override
  State<WelcomeBackScreen> createState() => _WelcomeBackScreenState();
}

class _WelcomeBackScreenState extends State<WelcomeBackScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: height * .2,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                          "Sign in with your email and password\nor continue with social media",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black45,
                            // fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topCenter,
                  height: height * .54,
                  margin:
                      EdgeInsets.only(left: width * .07, right: width * .07),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          // padding around hint
                          contentPadding: const EdgeInsets.only(
                              left: 35, bottom: 23, top: 23),
                          hintText: 'Enter your email',
                          labelText: 'Email',
                          labelStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold),
                          // Add border around text filed
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                  color: Colors.deepOrangeAccent, width: 2)),
                          // Make labelText visible all time
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          // Add icon in right side
                          suffixIcon: Container(
                            padding: const EdgeInsets.only(
                                right: Checkbox.width * 1.2),
                            child: SvgPicture.asset(
                              'assets/icons/Mail.svg',
                              semanticsLabel: 'Google Logo',
                            ),
                          ),
                          hintStyle: const TextStyle(
                            color: Colors.black38,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          // focusColor: Colors.deepOrangeAccent,
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              borderSide: BorderSide(
                                  color: Colors.deepOrangeAccent, width: 2)),
                        ),
                        cursorColor: Colors.deepOrangeAccent,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.deepOrangeAccent,
                          // padding around hint
                          contentPadding: const EdgeInsets.only(
                              left: 35, bottom: 23, top: 23),
                          hintText: 'Enter your password',
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold),
                          // Add border around text filed
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide(
                                  color: Colors.deepOrangeAccent, width: 2)),
                          // Make labelText visible all time
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          // Add icon in right side
                          suffixIcon: Container(
                            padding: const EdgeInsets.only(
                                right: Checkbox.width * 1.5),
                            child: SvgPicture.asset(
                              'assets/icons/Lock.svg',
                              semanticsLabel: 'Google Logo',
                            ),
                          ),
                          hintStyle: const TextStyle(
                              color: Colors.black38,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                          focusedBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                              borderSide: BorderSide(
                                  color: Colors.deepOrangeAccent, width: 2)),
                        ),
                        cursorColor: Colors.deepOrangeAccent,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      value = true;
                                    },
                                  ),
                                  const Text("Remember me",
                                      style: TextStyle(color: Colors.black45)),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forget Password",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * .01),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          elevation: 0,
                          fixedSize: Size(width * .86, 60),
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * .102,
                  padding: EdgeInsets.only(top: height * .02),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: width * .2, left: width * .2),
                        child: ButtonBar(
                          alignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Material(
                              child: Ink(
                                decoration: const BoxDecoration(
                                  color: Colors.black12,
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SvgPicture.asset(
                                      'assets/icons/google-icon.svg',
                                      width: Checkbox.width,
                                      height: Checkbox.width,
                                      semanticsLabel: 'Google Logo',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              child: Ink(
                                decoration: const BoxDecoration(
                                  color: Colors.black12,
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  // borderRadius: BorderRadius.circular(500.0),
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SvgPicture.asset(
                                      'assets/icons/facebook-2.svg',
                                      width: Checkbox.width,
                                      height: Checkbox.width,
                                      semanticsLabel: 'Google Logo',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Material(
                              child: Ink(
                                decoration: const BoxDecoration(
                                  color: Colors.black12,
                                  shape: BoxShape.circle,
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SvgPicture.asset(
                                      'assets/icons/twitter.svg',
                                      width: Checkbox.width,
                                      height: Checkbox.width,
                                      semanticsLabel: 'Google Logo',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // ElevatedButton(
                            //   style: ElevatedButton.styleFrom(
                            //     backgroundColor: Colors.black12,
                            //     elevation: 0,
                            //     shape: const CircleBorder(),
                            //     // fixedSize: const Size( 25, 25),
                            //   ),
                            //   onPressed: () {},
                            //   child: SvgPicture.asset(
                            //     'assets/icons/twitter.svg',
                            //     width: 25,
                            //     height: 25,
                            //     semanticsLabel: 'Google Logo',
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(onPressed: () {

                    }, child: const Text("Sign Up",style: TextStyle(color: Colors.orange,fontSize: 15),)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
