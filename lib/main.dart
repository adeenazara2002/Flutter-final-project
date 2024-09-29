import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/Signin.dart';
import 'package:flutterfinalproject/Screens/artBoard.dart';
// import 'package:flutterfinalproject/Screens/artBoard.dart';
// import 'package:flutterfinalproject/Screens/onBoard1.dart';
// import 'package:flutterfinalproject/Screens/onBoard2.dart';
import 'package:flutterfinalproject/Screens/onBoard3.dart';
import 'package:flutterfinalproject/Screens/settings.dart';
import 'package:flutterfinalproject/Screens/signUp.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Settings(),
    );
  }
}
