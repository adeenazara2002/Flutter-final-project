import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/onBoard1.dart';
import 'package:get/get.dart';

class ArtBoard extends StatelessWidget {
  const ArtBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
            ),
            Positioned(
              top: 40,
              left: 20,
              child: Image.asset(
                'assets/images/vector.png',
                width: 60,
                height: 60,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 160)),
                        Image.asset('assets/images/slider.png'),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 80)),
                        Image.asset('assets/images/Taskcy.png'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 60)),
                        Text(
                          'Building Better',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 37,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 90)),
                        Text(
                          'Workplaces',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 37,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 60)),
                        Text(
                          'Create a unique emotional story that',
                          style: TextStyle(
                              color: Color.fromRGBO(141, 141, 141, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 90)),
                        Text(
                          'describes better than words',
                          style: TextStyle(
                              color: Color.fromRGBO(141, 141, 141, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 45),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(() => const OnBoard()); // Use GetX for navigation
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            shadowColor: const Color.fromRGBO(139, 120, 255, 1)
                                .withOpacity(0.8),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            padding: EdgeInsets.zero,
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromRGBO(139, 120, 255, 1),
                                  Color.fromRGBO(84, 81, 214, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                minHeight: 50.0,
                              ),
                              alignment: Alignment.center,
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 80.0,
                                  vertical: 17.0,
                                ),
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
