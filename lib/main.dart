import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/Signin.dart';
import 'package:flutterfinalproject/Screens/artBoard.dart';
import 'package:flutterfinalproject/Screens/artBoard.dart';
import 'package:flutterfinalproject/Screens/onBoard1.dart';
import 'package:flutterfinalproject/Screens/onBoard2.dart';
import 'package:flutterfinalproject/Screens/onBoard3.dart';
import 'package:flutterfinalproject/Screens/settings.dart';
import 'package:flutterfinalproject/Screens/signUp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase here
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ArtBoard());
  }
}
