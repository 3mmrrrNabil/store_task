import 'package:flutter/material.dart';
import 'package:store/features/home/domain/entites/card_entites.dart';
import 'package:store/features/home/presentation/views/widgets/Custom_card_widget.dart';
import 'package:store/features/home/data/models/getProductsModel.dart';

class grid_view_widget extends StatelessWidget {
  const grid_view_widget({
    super.key,
    required this.products,

  });

  final List<CardEntites> products;
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4/5.6,
      ),
      itemCount: products.length, 
      itemBuilder: (context, index) {
        final product = products[index];
            
        return Padding(
          padding: const EdgeInsets.only(right: 2.8,left: 2.9,bottom: 16),
          child: CustomCard(
            product: product,
          ),
        );
      },
    );
  }
}
