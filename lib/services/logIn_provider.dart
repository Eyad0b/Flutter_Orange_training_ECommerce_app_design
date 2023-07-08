import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../const_values.dart';
import 'package:http/http.dart' as http;

class SignInService extends ChangeNotifier {

  Future signInWithEmailAndPassword({
    required String password,
    required String Email,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: Email,
          password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        // return false;
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        // return false;
      }
      // else {
      //   return true;
      // }
    }
  }
  Future signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  // Future login() async {
  //   final response = await http.post(
  //     Uri.parse(
  //       "${ConstantValue.BASE_URL}login.php",
  //     ),
  //     body: {
  //       "Phone": phoneTextEditingController.text,
  //       "Password": passwordTextEditingController.text,
  //       "ConCode": countryCode,
  //       "lang": "ar"
  //     },
  //   );
  //   if (response.statusCode == 200) {
  //     var jsonBody = jsonDecode(response.body);
  //     var result = jsonBody["result"];
  //     if (result) {
  //       await General.savePrefString(ConstantValue.Id, jsonBody["Id"]);
  //       await General.savePrefString(ConstantValue.Name, jsonBody["Name"]);
  //       await General.savePrefString(ConstantValue.Phone, jsonBody["Phone"]);
  //       await General.savePrefString(
  //           ConstantValue.ConCode, jsonBody["ConCode"]);
  //       await General.savePrefString(
  //           ConstantValue.Id_usertype, jsonBody["Id_usertype"]);
  //       await General.savePrefString(
  //           ConstantValue.Password, passwordTextEditingController.text);
  //       // ignore: use_build_context_synchronously
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const MainScreen(),
  //         ),
  //       );
  //     } else {
  //       // ignore: use_build_context_synchronously
  //       showModalBottomSheet(
  //         context: context,
  //         builder: (context) {
  //           return Container(
  //             margin: const EdgeInsets.all(20),
  //             width: width,
  //             height: height! * .30,
  //             decoration: const BoxDecoration(
  //               borderRadius: BorderRadius.only(
  //                 topLeft: Radius.circular(35),
  //                 topRight: Radius.circular(35),
  //               ),
  //             ),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               mainAxisAlignment: MainAxisAlignment.end,
  //               children: [
  //                 const Icon(
  //                   Icons.warning,
  //                   size: 50,
  //                 ),
  //                 Text(
  //                   jsonBody["msg"],
  //                 ),
  //                 CustomButton(
  //                   text: AppLocalizations.of(context)!.ok,
  //                   onTap: () {
  //                     Navigator.pop(context);
  //                   },
  //                 ),
  //               ],
  //             ),
  //           );
  //         },
  //       );
  //     }
  //   }
  // }
}
