import 'package:flutter/material.dart';

class ArtBoard extends StatefulWidget {
  const ArtBoard({super.key});

  @override
  State<ArtBoard> createState() => _ArtBoardState();
}

class _ArtBoardState extends State<ArtBoard> {
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
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
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 80)),
                        Image.asset('assets/images/Taskcy.png')
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Row(
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

                    // SizedBox(
                    //   height: 10,
                    // ),
                    Row(
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

                    SizedBox(
                      height: 10,
                    ),
                    Row(
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

                    SizedBox(
                      height: 5,
                    ),
                    Row(
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

                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation:
                                0, // Remove elevation to prevent grey background
                            shadowColor: Colors
                                .transparent, // Disable shadow color to prevent grey area
                            foregroundColor: Colors.white, // Text color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            padding: EdgeInsets
                                .zero, // Remove padding from the button to prevent overflow
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 198, 48, 1),
                                  Color.fromRGBO(255, 179, 57, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 300.0, // Adjust the width as needed
                                minHeight: 50.0, // Adjust the height as needed
                              ),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 80.0,
                                  vertical: 20.0,
                                ),
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
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
