
import 'package:flutter/material.dart';
import 'package:store/features/home/data/models/getProductsModel.dart';
import 'package:store/features/home/domain/entites/card_entites.dart';

class price_text_widget extends StatelessWidget {
  const price_text_widget({
    super.key,
    required this.product,
  });

  final CardEntites product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text(
            "EGP ${product.price}  ",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1a145b),
            ),
          ),
           
         
            const Text(
    
              "${0.0} EGP",
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                decorationColor: Color(0xFF3b86b4),
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Color(0xFF9fbcd5),
              ),
            
          ),
        ],
      ),
    );
  }
}
