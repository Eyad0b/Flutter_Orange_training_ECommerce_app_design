import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../const_values.dart';
import 'package:http/http.dart' as http;

class SignUpService extends ChangeNotifier {

  Future createUserWithEmailAndPassword({
    required String First_name,
    required String Last_name,
    required String password,
    required String Email,
    required String Phone,
    required String Address,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: Email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future signUp ({
    required String First_name,
    required String Last_name,
    required String password,
    required String Email,
    required String Phone,
    required String Address,
  }) async {
    final response = await http.post(
      Uri.parse(
        "http://192.168.1.103/SignUp.php",
      ),
      body: {
        "First_name": First_name,
        "Last_name": Last_name,
        "password": password,
        "Email": Email,
        "Phone": Phone,
        "Address": Address,
        "Id_statustypes": "1",
      },
    );
    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      var result = jsonBody["result"];
      if (result) {
        print("$result this is result");
      } else {
        print("$result this is else result");
      }
    }
  }
}
