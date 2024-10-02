import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/onBoard2.dart';
import 'package:get/get.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 60),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 300)),
                Image.asset('assets/images/yellowBall.png'),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 30)),
                Image.asset('assets/images/pinkMiddle.png'),
                const Padding(padding: EdgeInsets.only(left: 90)),
                Container(
                  height: 60,
                  width: 180,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(153, 153, 153, 0.25),
                      Color.fromRGBO(202, 202, 202, 0.25),
                    ]),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color.fromRGBO(202, 202, 202, 0.25)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 90)),
                          Image.asset('assets/images/bigLine.png'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 130)),
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
                const Padding(padding: EdgeInsets.only(left: 330)),
                Image.asset('assets/images/pinkBall.png'),
              ],
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 270)),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/girl.png'),
                  radius: 30,
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 120,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 260)),
                      Image.asset('assets/images/purpleBall.png'),
                    ],
                  ),
                  const Positioned(
                    top: 0,
                    left: 20,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/redHead.png'),
                      radius: 40,
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 70,
                    child: Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(153, 153, 153, 0.25),
                            Color.fromRGBO(202, 202, 202, 0.25),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color.fromRGBO(202, 202, 202, 0.25),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 90)),
                              Image.asset('assets/images/bigLine.png'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 130)),
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
              height: 40,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Positioned(
                    top: 0,
                    left: 260,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/uncle.png'),
                      radius: 40,
                    ),
                  ),
                  Positioned(
                    top: -20,
                    left: 100,
                    child: Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(153, 153, 153, 0.25),
                            Color.fromRGBO(202, 202, 202, 0.25),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color.fromRGBO(202, 202, 202, 0.25),
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 90)),
                              Image.asset('assets/images/bigLine.png'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.only(left: 130)),
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
            const SizedBox(height: 5),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 80)),
                Image.asset('assets/images/purpleBall.png'),
              ],
            ),
            Row(
              children: [
                Image.asset('assets/images/yellowBigBall.png'),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 260)),
                Image.asset('assets/images/yellowBall.png'),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 300)),
                Image.asset('assets/images/purpleBall.png'),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 250)),
                Image.asset('assets/images/pinkBall.png'),
              ],
            ),
            const SizedBox(height: 5),
            const Row(
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
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'Lets create a',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 32, 85, 1),
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'space',
                  style: TextStyle(
                      color: Color.fromRGBO(117, 110, 243, 1),
                      fontSize: 35,
                      fontWeight: FontWeight.w600),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  'for',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Text(
                  'your',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 30)),
                Text(
                  'workflows.',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 32, 85, 1),
                      fontSize: 35,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 30)),
                Image.asset('assets/images/Sliedbar.png'),
              ],
            ),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 40)),
                const Text(
                  'Skip',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 32, 85, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Stack(
                  children: [
                    Image.asset('assets/images/rectangle.png'), // Rectangle image
                    // Positioned widget to adjust the arrow position
                    Positioned(
                      left: 10,
                      right: 0,
                      top: 20,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => const OnBoard2()); // Using GetX for navigation
                        },
                        child: const Icon(
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
