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
              'assets/images/logo.png', // Logo image
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6, // Adjust height if needed
            ),
            // Vector image on top left corner
            Positioned(
              top: 20, // Adjust the top position as needed
              left: 20, // Adjust the left position as needed
              child: Image.asset(
                'assets/images/vector.png', // Replace with your vector image path
                width: 60, // Set your desired width
                height: 60, // Set your desired height
              ),
            ),
            // Container that appears over the image
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
            // Overlapping container with slight offset
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
