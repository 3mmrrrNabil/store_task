

import 'package:flutter/material.dart';
import 'package:store/features/home/data/models/getProductsModel.dart';
import 'package:store/features/home/domain/entites/card_entites.dart';

class review_text_widget extends StatelessWidget {
  const review_text_widget({
    super.key,
    required this.product,
  });

  final CardEntites product;

  @override
  Widget build(BuildContext context) {
    return Text(
      "Review (${product.ratingRate})",
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w700,
        color: Color(0xFF323061),
      ),
    );
  }
}