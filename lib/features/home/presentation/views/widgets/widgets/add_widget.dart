
import 'package:flutter/material.dart';
import 'package:store/features/home/data/models/getProductsModel.dart';

class add_widget extends StatelessWidget {
  const add_widget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth*0.07,
      height: screenHeight*0.04,
      decoration: BoxDecoration(
        color: const Color(0xFF004087),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: screenWidth*0.07,
      ),
    );
  }
}
