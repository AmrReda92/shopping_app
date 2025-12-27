import 'package:flutter/material.dart';
import 'package:shopping_app/core/routes/app_styles.dart';
import 'package:shopping_app/features/product/presentation/models/product_model.dart';

class CustomProductItem extends StatelessWidget {
  final ProductModel product ;
  const CustomProductItem({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
         Image.asset(product.image,fit: BoxFit.cover,),
          Text(product.title,style:AppStyles.font20 ,maxLines: 1,overflow: TextOverflow.ellipsis,),
          Text(product.price.toString(),style:AppStyles.font20 ,),
          Row(
            children: [
              Text(product.rate.toString(),style:AppStyles.font20,),
              SizedBox(width: 10,),
              Text(product.rateCount.toString(),style:AppStyles.font20 ,),
            ],
          ),
      ],
    );
  }
}
