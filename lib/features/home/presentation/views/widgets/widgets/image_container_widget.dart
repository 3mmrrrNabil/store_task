
import 'package:flutter/material.dart';
import 'package:store/features/home/data/models/getProductsModel.dart';
import 'package:store/features/home/domain/entites/card_entites.dart';

class image_container_widget extends StatelessWidget {
  const image_container_widget({
    super.key,
    required this.product,
    required this.containerHeight,
  });

  final CardEntites product;
  final double containerHeight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(23),
        topRight: Radius.circular(23),
      ),
      child: Image.network(
        product.image,
        height: containerHeight * 0.46,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
