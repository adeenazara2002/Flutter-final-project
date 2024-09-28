import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/onBoard2.dart';

class OnBoard2 extends StatefulWidget {
  const OnBoard2({super.key});

  @override
  State<OnBoard2> createState() => _OnBoard2State();
}

class _OnBoard2State extends State<OnBoard2> {
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
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 330)),
                Image.asset('assets/images/pinkBall.png'),
              ],
            ),
            SizedBox(
              height: 300,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 50,
                    left: 60,
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(198, 195, 251, 1),
                      backgroundImage: AssetImage('assets/images/men.png'),
                      radius: 110,
                    ),
                  ),
                  Positioned(
                    top: 1,
                    left: 10,
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
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 10)),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/redHead.png'),
                                radius: 20,
                              ),
                              // Image.asset('assets/images/redHead.png'),
                              Padding(padding: EdgeInsets.only(left: 10)),

                              Image.asset('assets/images/bigLine.png'),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 60)),
                              Image.asset('assets/images/smallLine.png'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Second Grey Container
                  Positioned(
                    top: 70,
                    left: 190,
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
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 10)),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/uncle.png'),
                                radius: 20,
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Image.asset('assets/images/bigLine.png'),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 60)),
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
              height: 100,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'Task Management',
                  style: TextStyle(
                      color: Color.fromRGBO(117, 110, 243, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'Work more',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'Structured',
                  style: TextStyle(
                      color: Color.fromRGBO(117, 110, 243, 1),
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  'and',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'Oragnized',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Image.asset('assets/images/Sliedbar.png'),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 40)),
                Text(
                  'Skip',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 32, 85, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Stack(
                  children: [
                    Image.asset('assets/images/rectangle.png'),
                    Positioned(
                      left: 10,
                      right: 0,
                      top: 20,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => OnBoard2()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
