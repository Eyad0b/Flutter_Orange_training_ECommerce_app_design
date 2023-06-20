import 'package:flutter/material.dart';
import 'package:untitled1/screens/signup_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/screens/welcome_back_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // save if the user click on textfield
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.purpleAccent,
                Colors.pinkAccent,
                Colors.orangeAccent,
                Colors.yellowAccent,
                Colors.greenAccent,
                Colors.blueAccent,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * .03),
              FittedBox(
                child: Lottie.asset(
                  'assets/lottie/login2.json',
                  width: Checkbox.width * 12,
                  height: Checkbox.width * 12,
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: width * .07, right: width * .07),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const Text('Hello',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    const Text('Please Login to Your Account',
                        style: TextStyle(color: Colors.grey)),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.only(
                          right: width * 0.08, left: width * 0.08),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextField(
                            focusNode: emailFocus,
                            onTap: () {
                              FocusScope.of(context).requestFocus(emailFocus);
                            },
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(20),
                              // padding around hint
                              labelText: 'Email Address',
                              suffixIcon: Icon(
                                Icons.mail_outline_rounded,
                                color: emailFocus.hasFocus ? Colors.red : Colors.white,
                                size: 30,
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              hintStyle: const TextStyle(color: Colors.black38),
                            ),
                          ),
                          const SizedBox(height: 10),
                          // add line
                          TextField(
                            focusNode: passwordFocus,
                            onTap: () {
                              FocusScope.of(context).requestFocus(passwordFocus);
                            },
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: passwordFocus.hasFocus ? Colors.red : Colors.white,
                                size: 30,
                              ),
                              labelText: 'Password',
                              border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              contentPadding: const EdgeInsets.all(20),
                              // padding around hint
                              hintStyle: const TextStyle(color: Colors.black38),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding:
                          EdgeInsets.only(right: width * .08, top: width * .04),
                      child: const Text('Forget Password',
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    Material(
                      child: Ink(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.purple,
                              Colors.pink,
                              Colors.red,
                              Colors.orange,
                            ],
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const WelcomeBackScreen()),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                right: width * .275,
                                left: width * .275,
                                top: width * .025,
                                bottom: width * .025),
                            child: const Text(
                              'Log in',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    const Text(
                      "Or Login using Social Media Account",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.5),
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage('assets/icons/facebook.com.png'),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Image(
                            color: Colors.red,
                            image: AssetImage('assets/icons/pngwing.com.png'),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Image(
                            color: Colors.orange,
                            image: AssetImage(
                                'assets/icons/67-670757_twitter-logo-png-transparent.png'),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Image(
                            color: Colors.green,
                            image: AssetImage('assets/icons/linkin.png'),
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * .02,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
