import 'package:flutter/material.dart';
import 'package:shopping_app/core/routes/app_styles.dart';
import 'package:shopping_app/core/routes/routes.dart';
import 'package:shopping_app/features/home/presentation/models/category_model.dart';

class CustomCategoryItem extends StatelessWidget {
  final CategoryModel category ;
  const CustomCategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context,Routes.productScreen);
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(category.image,height:250,width:250,fit: BoxFit.cover,)),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Text(category.title,textAlign:TextAlign.center ,style: AppStyles.font24))
        ],
      ),
    );
  }
}
