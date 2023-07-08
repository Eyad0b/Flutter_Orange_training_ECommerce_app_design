import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/screens/forgotPassword/forgot_passorwd_screen.dart';
import 'package:untitled1/screens/logInSuccess/login_success_screen.dart';
import 'package:untitled1/screens/signUp/signup_screen.dart';

import '../../../services/logIn_provider.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isChecked = false;
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

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
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontFamily: "muli",
                  ),
                ),
                Text(
                    "Sign in with your email and password\nor continue with social media",
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
                top: Checkbox.width * 2, left: width * .06, right: width * .06),
            child: Column(
              children: [
                SizedBox(
                  height: Checkbox.width * 3.8,
                  child: TextField(
                    controller: emailTextEditingController,
                    decoration: InputDecoration(
                      // padding around hint
                      contentPadding:
                          const EdgeInsets.only(left: 35, bottom: 23, top: 23),
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
                const SizedBox(height: Checkbox.width * 1.3),
                SizedBox(
                  height: Checkbox.width * 3.8,
                  child: TextField(
                    controller: passwordTextEditingController,
                    decoration: InputDecoration(
                      focusColor: const Color(0xFFFD7643),
                      // padding around hint
                      contentPadding:
                          const EdgeInsets.only(left: 35, bottom: 23, top: 23),
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
                        borderSide:
                            BorderSide(color: Color(0xFFFD7643), width: 2),
                      ),
                      // Make labelText visible all time
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      // Add icon in right side
                      suffixIcon: Container(
                        padding:
                            const EdgeInsets.only(right: Checkbox.width * 1.2),
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
                          borderSide:
                              BorderSide(color: Color(0xFFFD7643), width: 2)),
                    ),
                    cursorColor: const Color(0xFFFD7643),
                  ),
                ),
                const SizedBox(height: Checkbox.width * 1.7),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              activeColor: const Color(0xFFFD7643),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            const Text(
                              "Remember me",
                              style: TextStyle(
                                // fontSize: 17,
                                color: Colors.black45,
                                fontWeight: FontWeight.w700,
                                fontFamily: "muli",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgetPasswordScreen()),
                        );
                      },
                      child: const Text(
                        "Forget Password",
                        style: TextStyle(
                          fontSize: Checkbox.width / 1.2,
                          decoration: TextDecoration.underline,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fontFamily: "muli",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: Checkbox.width * 1.15),
                ElevatedButton(
                  onPressed: () async {
                    await Provider.of<SignInService>(context, listen: false)
                        .signInWithEmailAndPassword(
                      password: passwordTextEditingController.text,
                      Email: emailTextEditingController.text,
                    );
                    await Provider.of<SignInService>(context, listen: false)
                        .signOut();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LogInSuccessScreen()),
                    );
                    // showDialog<void>(
                    //   context: context,
                    //   barrierDismissible: false, // user must tap button!
                    //   builder: (BuildContext context) {
                    //     return AlertDialog(
                    //       title: const Text('Sign Up Problem'),
                    //       content: const SingleChildScrollView(
                    //         child: ListBody(
                    //           children: <Widget>[
                    //             Text('This is a demo alert dialog.'),
                    //             Text(
                    //                 'Would you like to approve of this message?'),
                    //           ],
                    //         ),
                    //       ),
                    //       actions: <Widget>[
                    //         TextButton(
                    //           child: const Text('Approve'),
                    //           onPressed: () {
                    //             Navigator.of(context).pop();
                    //           },
                    //         ),
                    //       ],
                    //     );
                    //   },
                    // );
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
            height: height * .07,
            margin: EdgeInsets.only(right: width * .23, left: width * .23),
            padding: const EdgeInsets.only(bottom: Checkbox.width / 2.4),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Material(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.grey.shade200,
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
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: InkWell(
                      // borderRadius: BorderRadius.circular(500.0),
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
                  color: Colors.grey.shade100,
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
          Container(
            width: double.infinity,
            height: Checkbox.width * 3.5,
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: Checkbox.width * 1.1),
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
                    fontSize: Checkbox.width,
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
                      fontSize: Checkbox.width,
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
