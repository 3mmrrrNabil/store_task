import 'package:flutter/material.dart';
class favorite_widget extends StatelessWidget {
  const favorite_widget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      right: 10,
      child:  Container(
        width: screenWidth*0.07,
        height: screenHeight*0.04,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          Icons.favorite_border,
          color: Color(0xFF004087),
          size: screenWidth*0.07,
    
        ),
      ),);
  }
}