import 'package:flutter/material.dart';
import 'package:store/features/home/domain/entites/card_entites.dart';
import 'package:store/features/home/presentation/views/widgets/add_widget.dart';
import 'package:store/features/home/presentation/views/widgets/category_text_widget.dart';
import 'package:store/features/home/presentation/views/widgets/descreption_text_widget.dart';
import 'package:store/features/home/presentation/views/widgets/favorite_widget.dart';
import 'package:store/features/home/presentation/views/widgets/image_container_widget.dart';
import 'package:store/features/home/presentation/views/widgets/price_text_widget.dart';
import 'package:store/features/home/presentation/views/widgets/review_text_widget.dart';
import 'package:store/features/home/presentation/views/widgets/star_widget.dart';
import 'package:store/features/home/data/models/getProductsModel.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  required this.product,
  });
  final CardEntites product;

  @override
  Widget build(BuildContext context) {


    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.35;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xFF88a1b3),
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Stack(
              children:[ image_container_widget(product: product, containerHeight: containerHeight),

                favorite_widget(screenWidth: screenWidth, screenHeight: screenHeight),
              ]),
          Padding(
            padding: const EdgeInsets.all(7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                category_text_widget(product: product),
                descrption_text_widget(product: product),
                price_text_widget(product: product),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    review_text_widget(product: product),
                    star_widget(screenWidth: screenWidth),
                    const SizedBox(width: 30,),
                    add_widget(screenWidth: screenWidth, screenHeight: screenHeight),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





