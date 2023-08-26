part of 'home_cubit.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoadingState extends HomeInitial {}

class HomeErrorState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeSuccessState extends HomeState {
  final List<HomeModel> homeModel;

  HomeSuccessState({required this.homeModel});

  @override
  List<Object?> get props => [homeModel];
}

class HomeGetState extends HomeState {
  @override
  List<Object?> get props => [];
}
