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
            // Image at the bottom
            Image.asset(
              'assets/images/logo.png', // Replace with your image path
              // fit: BoxFit.cover,
              // width: MediaQuery.of(context).size.width,
              // height: MediaQuery.of(context).size.height * 0.6, // Adjust height as needed
            ),
            // Container that appears over the image
            Positioned(
              bottom: 0, // Position at the bottom of the screen
              left: 0, // Align left edge with the screen
              right: 0, // Align right edge with the screen
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3, // Adjust height as needed
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)), // Rounded top corners
                  color: Colors.white, // Set background color
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            // Overlapping container with slight offset
            Positioned(
              bottom: 0, // Overlap by setting a slight positive value
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5, // Same height as above
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)), // Rounded top corners
                  color: Colors.black, // Set background color
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
