import 'package:flutter/material.dart';
import 'package:shopping_app/features/home/presentation/models/category_model.dart';
import 'package:shopping_app/features/home/presentation/widgets/custom_category_item.dart';

class CustomGridViewCategory extends StatelessWidget {
  const CustomGridViewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
      itemCount: 4,
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20 ,
            crossAxisSpacing: 20,
        ),
        itemBuilder: (context,index){
          final CategoryModel category = categoryModel[index] ;
          return CustomCategoryItem(category: category);
        }
    );

  }
}
