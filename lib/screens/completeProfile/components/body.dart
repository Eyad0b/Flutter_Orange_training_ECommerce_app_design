import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../services/signUp_service.dart';
import '../../welcomeBack/welcome_back_screen.dart';

class Body extends StatefulWidget {
  var email, passsword;

  Body({required this.email, required this.passsword, super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController firstNameTextEditingController =
      TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();
  TextEditingController addressTextEditingController = TextEditingController();
  TextEditingController phoneNumberTextEditingController =
      TextEditingController();

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
                top: Checkbox.width / 2.8, bottom: Checkbox.width),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Complete Profile",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "muli",
                  ),
                ),
                Text("Complete your details or continue\nwith social media",
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
            height: height * .6,
            padding: EdgeInsets.only(
                top: Checkbox.width / 1.85,
                left: width * .06,
                right: width * .06),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: Checkbox.width * 3.7,
                  child: TextField(
                    controller: firstNameTextEditingController,
                    decoration: InputDecoration(
                      // padding around hint
                      contentPadding:
                          const EdgeInsets.only(left: 35, bottom: 23, top: 23),
                      hintText: 'Enter your first name',
                      labelText: 'First Name',
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
                        padding:
                            const EdgeInsets.only(right: Checkbox.width * 1.1),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                            'assets/icons/User.svg',
                            semanticsLabel: 'Google Logo',
                          ),
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
                    controller: lastNameTextEditingController,
                    decoration: InputDecoration(
                      focusColor: const Color(0xFFFD7643),
                      // padding around hint
                      contentPadding:
                          const EdgeInsets.only(left: 35, bottom: 23, top: 23),
                      hintText: 'Enter your last name',
                      labelText: 'Last Name',
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
                            const EdgeInsets.only(right: Checkbox.width * 1.1),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                            'assets/icons/User.svg',
                            semanticsLabel: 'User Logo',
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
                const SizedBox(height: Checkbox.width * 1.65),
                SizedBox(
                  height: Checkbox.width * 3.7,
                  child: TextField(
                    controller: phoneNumberTextEditingController,
                    decoration: InputDecoration(
                      focusColor: const Color(0xFFFD7643),
                      // padding around hint
                      contentPadding:
                          const EdgeInsets.only(left: 35, bottom: 23, top: 23),
                      hintText: 'Enter your phone number',
                      labelText: 'Phone Number',
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
                          padding: const EdgeInsets.all(7.0),
                          child: SvgPicture.asset(
                            'assets/icons/Phone.svg',
                            semanticsLabel: 'Phone Logo',
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
                const SizedBox(height: Checkbox.width * 1.65),
                SizedBox(
                  height: Checkbox.width * 3.7,
                  child: TextField(
                    controller: addressTextEditingController,
                    decoration: InputDecoration(
                      focusColor: const Color(0xFFFD7643),
                      // padding around hint
                      contentPadding:
                          const EdgeInsets.only(left: 35, bottom: 23, top: 23),
                      hintText: 'Enter your address',
                      labelText: 'Address',
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
                            'assets/icons/Location point.svg',
                            semanticsLabel: 'Address Logo',
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
                const SizedBox(height: Checkbox.width * 2.2),
                ElevatedButton(
                  onPressed: () async {
                    await Provider.of<SignUpService>(context, listen: false)
                        .createUserWithEmailAndPassword(
                      First_name: firstNameTextEditingController.text,
                      Last_name: lastNameTextEditingController.text,
                      password: widget.passsword,
                      Email: widget.email,
                      Phone: phoneNumberTextEditingController.text,
                      Address: addressTextEditingController.text,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeBackScreen()),
                    );
                    showDialog<void>(
                      context: context,
                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Sign Up Problem'),
                          content: const SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text('This is a demo alert dialog.'),
                                Text(
                                    'Would you like to approve of this message?'),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('Approve'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
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
            height: height * .087,
            padding: EdgeInsets.only(top: height * .028, bottom: height * .004),
            alignment: Alignment.center,
            child: const Text(
              textAlign: TextAlign.center,
              'By continuing your confirm that you agree\nwith our Term and Condition',
              style: TextStyle(
                color: Color(0xFFA6A6A6),
                fontWeight: FontWeight.w700,
                fontSize: Checkbox.width / 1.38,
                fontFamily: "muli",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
