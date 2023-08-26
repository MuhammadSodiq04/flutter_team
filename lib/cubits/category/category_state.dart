part of 'category_cubit.dart';

@immutable
abstract class CategoryState extends Equatable{}

class CategoryInitial extends CategoryState {
  @override
  List<Object?> get props => [];
}

class CategoryLoadingState extends CategoryInitial{}

class CategoryGetState extends CategoryState {

  CategoryGetState({required this.categoryModel});
  final List<CategoryModel> categoryModel;

  @override
  List<Object?> get props => [categoryModel];
}

class CategoryErrorState extends CategoryState {

  CategoryErrorState({required this.errorText});

  final String errorText;

  @override
  List<Object?> get props => [errorText];
}