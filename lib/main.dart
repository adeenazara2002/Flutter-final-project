import 'package:flutter/material.dart'; // Add this import for MaterialApp
import 'package:firebase_core/firebase_core.dart'; // Import Firebase core
import 'package:flutterfinalproject/Screens/artBoard.dart';
import 'package:flutterfinalproject/Screens/onBoard1.dart';
import 'package:flutterfinalproject/Screens/settings.dart';
import 'package:flutterfinalproject/Screens/signIn.dart';
import 'package:flutterfinalproject/Screens/signUp.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase here
  runApp(MyApp()); // Removed 'const' as the ArtBoard is not constant
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(), // ArtBoard should not be constant due to dynamic elements
    );
  }
}
