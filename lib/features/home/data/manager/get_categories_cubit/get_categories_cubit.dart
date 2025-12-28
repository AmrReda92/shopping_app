
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/features/home/data/repos/home_repo.dart';

part 'get_categories_state.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  final HomeRepo homeRepo ;
  GetCategoriesCubit(this.homeRepo) : super(GetCategoriesInitial());

  Future<void> getCategory()async{
    emit(GetCategoriesLoading());
    final response = await homeRepo.getCategory();

    return response.fold(
        (failure){
          emit(GetCategoriesError(failure.errorMessage));
        },
        (categories){
          emit(GetCategoriesSuccess(categories));
        }
    );
  }
}
