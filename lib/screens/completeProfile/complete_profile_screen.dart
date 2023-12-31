import 'package:flutter/material.dart';
import '../completeProfile/components/body.dart';

class CompleteProfileScreen extends StatefulWidget {
  var email,passsword;
  CompleteProfileScreen({required this.email,required this.passsword,super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Body(email: widget.email,passsword: widget.passsword),
      ),
    );
  }
}
