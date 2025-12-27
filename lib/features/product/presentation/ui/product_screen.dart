import 'package:flutter/material.dart';
import 'package:shopping_app/features/product/presentation/widgets/custom_grid_view_product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(child: CustomGridViewProduct())
          ],
        ),
      ),
    );
  }
}
