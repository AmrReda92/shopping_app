import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/product/data/manager/product_cubit/product_cubit.dart';
import 'package:shopping_app/features/product/presentation/widgets/custom_product_item.dart';
import '../../data/model/product_model.dart';

class CustomGridViewProduct extends StatelessWidget {
  const CustomGridViewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess){
          return GridView.builder(
                      itemCount: state.product.length,
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: .50
                      ),
                      itemBuilder: (context, index) {
                        final ProductModel product = state.product[index];
                        return Card(
                          color: Colors.blue.shade100,
                          elevation: 5,
                            child: CustomProductItem(product: product));
                      }
                  );
        }
        else if(state is ProductError){
          return Center(child: Text(state.errorMessage));
        }else{
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

