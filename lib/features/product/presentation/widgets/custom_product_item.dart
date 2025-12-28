import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/routes/app_styles.dart';
import '../../data/model/product_model.dart';

class CustomProductItem extends StatelessWidget {
  final ProductModel product ;
  const CustomProductItem({super.key, required this.product});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
         CachedNetworkImage(imageUrl: product.image!,fit: BoxFit.cover ,height: 200,width: 160,),
          Text(product.title!,style:AppStyles.font20 ,maxLines: 1,overflow: TextOverflow.ellipsis,),
          Text(product.price.toString(),style:AppStyles.font20 ,),
          Row(
            children: [
              Text(product.rating!.rate.toString(),style:AppStyles.font20,),
              SizedBox(width: 10,),
              Text(product.rating!.count.toString(),style:AppStyles.font20 ,),
            ],
          ),
      ],
    );
  }
}
