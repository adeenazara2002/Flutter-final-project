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
            SizedBox(
              height: 80,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 300)),
                Image.asset('assets/images/yellowBall.png'),
              ],
            ),
            // SizedBox(
            //   height: 1,
            // ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Image.asset('assets/images/pinkMiddle.png'),
                Padding(padding: EdgeInsets.only(left: 90)),
                Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(153, 153, 153, 0.25),
                      Color.fromRGBO(202, 202, 202, 0.25),
                    ]),
                    borderRadius: BorderRadius.circular(12),
                    border:
                        Border.all(color: Color.fromRGBO(202, 202, 202, 0.25)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 90)),
                          Image.asset('assets/images/bigLine.png'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 130)),
                          Image.asset('assets/images/smallLine.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 330)),
                Image.asset('assets/images/pinkBall.png'),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 270)),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/girl.png'),
                  radius: 30,
                ),
              ],
            ),

            SizedBox(height: 70,),
            SizedBox(
              height: 120, // Height of the stack
              child: Stack(
                clipBehavior: Clip.none, // Allow overflow for overlap
                children: [
                  // CircleAvatar (red head)
                  Positioned(
                    top: 0, // Place red head at the base
                    left: 20, // Adjust positioning of avatar
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/redHead.png'),
                      radius: 40, // Adjust radius
                    ),
                  ),
                  // Grey Container overlapping the top right of redhead image
                  Positioned(
                    top: -20, // Adjust overlap to make container appear higher
                    left:
                        70, // Adjust positioning to overlap the redhead image
                    child: Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(153, 153, 153, 0.25),
                            Color.fromRGBO(202, 202, 202, 0.25),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color.fromRGBO(202, 202, 202, 0.25),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 90)),
                              Image.asset('assets/images/bigLine.png'),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 130)),
                              Image.asset('assets/images/smallLine.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 260)),
                Image.asset('assets/images/purpleBall.png'),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 100)),
                Image.asset('assets/images/purpleBall.png'),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/yellowBigBall.png'),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 260)),
                Image.asset('assets/images/yellowBall.png'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 300)),
                Image.asset('assets/images/purpleBall.png'),
              ],
            ),
            SizedBox(
              height: 50,
            ),
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
