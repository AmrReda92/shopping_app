import 'package:dartz/dartz.dart';
import 'package:shopping_app/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<String>>> getCategory ();
}