import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/core/constant/cateogry_images.dart';
import 'package:shopping_app/features/home/data/manager/get_categories_cubit/get_categories_cubit.dart';
import 'package:shopping_app/features/home/presentation/models/category_model.dart';
import 'package:shopping_app/features/home/presentation/widgets/custom_category_item.dart';

class CustomGridViewCategory extends StatelessWidget {
  const CustomGridViewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
      builder: (context, state) {

        if (state is GetCategoriesSuccess) {
          return GridView.builder(
                      itemCount: state.categories.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                       final String categoryFromApi = state.categories[index];
                       final category = CategoryModel(
                           title: categoryFromApi,
                           image: categoryImages[categoryFromApi]??"assets/images/woman.png"
                       );
                        return Card(
                          elevation: 9,
                            shadowColor: Colors.grey,
                            child: CustomCategoryItem(category: category));
                      }
                  );
        }
        else if(state is GetCategoriesError){
          return Center(child: Text(state.errorMessage));
        }
        else{
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
