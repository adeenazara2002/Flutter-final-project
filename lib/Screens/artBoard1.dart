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
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    // Purple image at the bottom
                    Image.asset(
                      'assets/images/logo.png', // Replace with your purple image path
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                    ),
                    // Vector image on top left corner
                    Positioned(
                      top: 20, // Adjust the top position as needed
                      left: 20, // Adjust the left position as needed
                      child: Image.asset(
                        'assets/images/vector.png',
                        width: 60, // Set your desired width
                        height: 80, // Set your desired height
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
