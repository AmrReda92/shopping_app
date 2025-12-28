part of 'get_categories_cubit.dart';

@immutable
sealed class GetCategoriesState {}

final class GetCategoriesInitial extends GetCategoriesState {}

final class GetCategoriesLoading extends GetCategoriesState {}
final class GetCategoriesSuccess extends GetCategoriesState {
  final List<String> categories;
  GetCategoriesSuccess(this.categories);
}
final class GetCategoriesError extends GetCategoriesState {
  final String errorMessage;
  GetCategoriesError(this.errorMessage);

}
