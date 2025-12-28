import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/routes/app_styles.dart';
import 'package:shopping_app/features/product/data/model/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel productModel ;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      title: Text("Item",style: AppStyles.font24.copyWith(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Container(
                height: MediaQuery.of(context).size.height*.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: CachedNetworkImage(imageUrl:productModel.image??"null" ,fit: BoxFit.cover,)),
            SizedBox(height: 20,),
            Text(productModel.title??"null",style: AppStyles.font24,),
            SizedBox(height: 8,),
            Text(productModel.description??"null",style: AppStyles.font20,maxLines: 4,),
            SizedBox(height: 14,),
            Text(productModel.price.toString(),style: AppStyles.font24,)
          ],
        ),
      ),
    );
  }
}
