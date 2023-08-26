import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_team/data/models/category_model/category_model.dart';
import 'package:flutter_team/data/models/universal_data.dart';
import 'package:flutter_team/data/repository/category/category_repository.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required this.categoryRepositories}) : super(CategoryInitial());

  final CategoryRepository categoryRepositories;


  Future<void> fetchAllCategory()async{
    emit(CategoryLoadingState());
    UniversalData universalData = await categoryRepositories.getAllCategory();
    if(universalData.error.isEmpty){
      emit(CategoryGetState(categoryModel: universalData.data as List<CategoryModel>));
    }else{
      emit(CategoryErrorState(errorText: universalData.error));
    }
  }

}
