import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/artBoard1.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ArtBoard(),
    );
  }
}