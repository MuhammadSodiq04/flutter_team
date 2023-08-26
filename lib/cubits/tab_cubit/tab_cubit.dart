// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

class TabBoxCubit extends Cubit<int> {
  TabBoxCubit() : super(0);

  updateScreen(int index) {
    emit(index);
  }
}
