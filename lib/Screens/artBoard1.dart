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
          child: Scrollbar(child: 
          SingleChildScrollView(
            child: Column(
              children: [
                
              ],
            ),
          )),
      ),
    );
  }
}