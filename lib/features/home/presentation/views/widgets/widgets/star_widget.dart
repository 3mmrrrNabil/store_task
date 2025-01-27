import 'package:flutter/material.dart';
class star_widget extends StatelessWidget {
  const star_widget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: const Color(0xFFffd800),
      size:  screenWidth*0.05,
    );
  }
}