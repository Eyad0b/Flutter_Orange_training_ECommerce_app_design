import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/home/home_screen.dart';
import 'package:untitled1/screens/logInSuccess/components/body.dart';

class LogInSuccessScreen extends StatefulWidget {
  const LogInSuccessScreen({super.key});

  @override
  State<LogInSuccessScreen> createState() => _LogInSuccessScreenState();
}


class _LogInSuccessScreenState extends State<LogInSuccessScreen> {
  @override
  Widget build(BuildContext context) {

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
        body: const Body(),
      ),
    );
  }
}
