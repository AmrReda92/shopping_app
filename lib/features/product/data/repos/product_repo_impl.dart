import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shopping_app/core/errors/failure.dart';
import 'package:shopping_app/core/utils/api_service.dart';
import 'package:shopping_app/features/product/data/model/product_model.dart';
import 'package:shopping_app/features/product/data/repos/product_repo.dart';

class ProductModelImpl implements ProductRepo {
  final ApiService apiService ;

  ProductModelImpl(this.apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> getAllProducts() async{
   try{
     final data = await apiService.get(endPoint: "products");
     List<ProductModel> products =[];
     for(var item in data as List){
      products.add(ProductModel.fromJson(item));
     }
     return (right(products));
   }catch(e){
     if(e is DioException){
       return left(ServerFailure.fromDioError(e));
     }
     return left(ServerFailure(e.toString()));

   }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getAProductsByCategory({required String category}) async{
    try{
      final data = await apiService.get(endPoint: "products/category/$category");
      List<ProductModel> products =[];
      for(var item in data as List){
        products.add(ProductModel.fromJson(item));
      }
      return (right(products));
    }catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));

    }
  }

}