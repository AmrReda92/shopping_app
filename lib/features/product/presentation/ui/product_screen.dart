import 'package:flutter/material.dart';
import 'package:shopping_app/features/product/data/model/product_model.dart';
import 'package:shopping_app/features/product/presentation/widgets/custom_grid_view_product.dart';

class ProductScreen extends StatelessWidget {
  final String categoryName;
  const ProductScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(categoryName)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 40,),
            Expanded(child: CustomGridViewProduct())
          ],
        ),
      ),
    );
  }
}
