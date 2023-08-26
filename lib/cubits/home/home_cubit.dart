import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_team/data/models/home_model/home_model.dart';
import 'package:flutter_team/data/models/universal_data.dart';
import 'package:flutter_team/data/repository/home/home_repository.dart';
import 'package:meta/meta.dart';


part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepository}) : super(HomeInitial());

  final HomeRepository homeRepository;

  Future<void> fetchAllProduct() async {
    emit(HomeLoadingState());
    UniversalData universalData = await homeRepository.getAllProducts();
    if (universalData.error.isEmpty) {
      emit(HomeSuccessState(homeModel: universalData.data));
    }
  }
}
