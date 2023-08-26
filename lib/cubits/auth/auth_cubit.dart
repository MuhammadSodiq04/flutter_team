// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter_team/data/models/register_user.dart';
import 'package:flutter_team/data/models/universal_data.dart';
import 'package:flutter_team/data/models/user_model.dart';
import 'package:flutter_team/data/repository/auth_repo/auth_repository.dart';
import 'package:flutter_team/local/storage_repository/storage_repository.dart';
import 'package:image_picker/image_picker.dart';

// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.authRepository}) : super(AuthInitial());

  final AuthRepository authRepository;

  Future<void> checkLoggedState() async {
    await Future.delayed(const Duration(seconds: 1));
    if (authRepository.getToken().isEmpty) {
      emit(AuthUnAuthenticatedState());
    } else {
      emit(AuthLoggedState());
    }
  }

  Future<void> logOutUser() async {
    await StorageRepository.deleteString("token");
    emit(AuthUnAuthenticatedState());
  }

  /*Future<void> signInWithPasswordAndGmail(String gmail, String password) async {
    emit(AuthLoadingState());
    UniversalData universalData = await authRepository.loginUser(
      gmail: gmail,
      password: password,
    );
    if (universalData.error.isEmpty) {
      emit(AuthLoggedState());
    } else {
      emit(AuthErrorState(errorText: universalData.error));
    }
  }*/



  Future<void> registerUser(RegisterUserModel registerUserModel) async {
    emit(AuthLoadingState());
    UniversalData universalData =
    await authRepository.register(registerUserModel: registerUserModel);
    if (universalData.error.isEmpty) {
      emit(AuthRegisteredState());
    } else {
      emit(AuthErrorState(errorText: universalData.error));
    }
  }

  /*Future<void> sendConfirmationCode(String code) async {
    emit(AuthLoadingState());
    UniversalData universalData = await authRepository.confirmCode(code: code);
    if (universalData.error.isEmpty) {
      emit(AuthConfirmCodeSuccessState());
    } else {
      if (universalData.error ==
          "You are already authorized! Siz allaqachon avtorizatsiya qilgansiz!") {
        emit(AuthConfirmCodeAlreadythereState());
      }
      emit(AuthErrorState(errorText: universalData.error));
    }
  }*/
}
