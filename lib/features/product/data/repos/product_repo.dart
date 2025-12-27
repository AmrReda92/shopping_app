import 'package:dartz/dartz.dart';
import 'package:shopping_app/features/product/data/model/product_model.dart';
import '../../../../core/errors/failure.dart';

abstract class ProductRepo {
  Future<Either<Failure,List<ProductModel>>> getAllProducts();
}