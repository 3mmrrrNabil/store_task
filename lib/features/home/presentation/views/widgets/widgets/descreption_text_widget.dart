


import 'package:flutter/material.dart';
import 'package:store/features/home/data/models/getProductsModel.dart';
import 'package:store/features/home/domain/entites/card_entites.dart';

class descrption_text_widget extends StatelessWidget {
  const descrption_text_widget({
    super.key,
    required this.product,
  });

  final CardEntites product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.description,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color(0xFF1a145b),
      ),
    );
  }
}