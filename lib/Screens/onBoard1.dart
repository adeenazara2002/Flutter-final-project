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
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Image.asset('assets/images/pinkMiddle.png'),
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 320)),
                Image.asset('assets/images/pinkBall.png'),
              ],
            ),
            
            SizedBox(height: 170,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 260)),
                Image.asset('assets/images/purpleBall.png'),
              ],
            ),


            SizedBox(height: 100,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 80)),
                Image.asset('assets/images/purpleBall.png'),
              ],
            ),

            SizedBox(height: 70,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 260)),
                Image.asset('assets/images/yellowBall.png'),
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 300)),
                Image.asset('assets/images/purpleBall.png'),
              ],
            ),

            SizedBox(height: 50,),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 250)),
                Image.asset('assets/images/pinkBall.png'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
