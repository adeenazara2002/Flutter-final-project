import 'package:flutter/material.dart';

class OnBoard extends StatefulWidget {
  const OnBoard({super.key});

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 80,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 300)),
                Image.asset('assets/images/yellowBall.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
