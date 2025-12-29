import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/core/routes/routes.dart';
import '../../../../core/routes/app_styles.dart';
import '../../data/model/product_model.dart';

class CustomProductItem extends StatelessWidget {
  final ProductModel product;
  const CustomProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 5,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              Routes.productDetailsScreen,
              arguments: product,
            );
          },
          child: CachedNetworkImage(
            imageUrl: product.image!,
            fit: BoxFit.contain,
            height: 200,
            width: 160,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title!,
                style: AppStyles.font20,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(product.price.toString(), style: AppStyles.font20),
              Row(
                children: [
                  Text(
                    "${product.rating!.rate.toString()} \$ ",
                    style: AppStyles.font20,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "(${product.rating!.count.toString()})",
                    style: AppStyles.font20,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            width: MediaQuery.of(context).size.width*.3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue
            ),
            child: Center(child: Text("Add To Cart",style: AppStyles.font18,)),
          ),
        ),
      ],
    );
  }
}
