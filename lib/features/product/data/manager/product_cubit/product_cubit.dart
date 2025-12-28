import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/product/data/model/product_model.dart';
import 'package:shopping_app/features/product/data/repos/product_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepo productRepo ;
  ProductCubit(this.productRepo) : super(ProductInitial());
  
  Future<void> getAllProducts()async{
    emit(ProductLoading());
    final response = await productRepo.getAllProducts();
    return response.fold(
        (failure) {
          emit(ProductError(failure.errorMessage));
        }
        ,
        (product){
        emit(ProductSuccess(product));
        }
    );
  }
}
