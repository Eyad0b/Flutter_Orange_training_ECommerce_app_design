import 'package:flutter/material.dart';
import 'package:untitled1/screens/logIn/components/body.dart';
import 'package:untitled1/screens/signUp/signup_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled1/screens/welcomeBack/welcome_back_screen.dart';

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
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}
