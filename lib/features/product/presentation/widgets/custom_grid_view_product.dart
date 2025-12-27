import 'package:flutter/material.dart';
import 'package:shopping_app/features/product/presentation/models/product_model.dart';
import 'package:shopping_app/features/product/presentation/widgets/custom_product_item.dart';

class CustomGridViewProduct extends StatelessWidget {
  const CustomGridViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productModel.length,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 26,
          mainAxisSpacing: 10,
          childAspectRatio: .55
        ),
        itemBuilder: (context,index){
          final ProductModel product = productModel[index];
         return CustomProductItem(product: product);
        }
    );
  }
}

