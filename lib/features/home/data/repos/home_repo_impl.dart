import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shopping_app/core/errors/failure.dart';
import 'package:shopping_app/core/utils/api_service.dart';
import 'package:shopping_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService ;

  HomeRepoImpl(this.apiService);
  
  @override

  Future<Either<Failure, List<String>>> getCategory()async {
    try{
      //fetching data from data resource
      final data = await apiService.get(endPoint: "products/categories");
      final List<String> categories=[];
      for(var item in data){
        categories.add(item.toString());
      }
      return right(categories);
    }catch(e){
      if(e is DioException){
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  
}