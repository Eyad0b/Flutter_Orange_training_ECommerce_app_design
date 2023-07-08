import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/services/logIn_provider.dart';
import 'package:untitled1/services/signUp_service.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SignUpService>(
          create: (_) => SignUpService(),
        ),
        ChangeNotifierProvider<SignInService>(
          create: (_) => SignInService(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false, // Fix this error [When the keyboard appears, the Flutter widgets resize.]
        home: SplashScreen(),
      ),
    );
  }
}
