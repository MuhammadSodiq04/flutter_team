import 'package:flutter_team/data/models/register_user.dart';

import '../../../local/storage_repository/storage_repository.dart';
import '../../models/universal_data.dart';
import '../../network/api_service.dart';

class AuthRepository {
  final ApiService apiService;

  AuthRepository({required this.apiService});

  Future<UniversalData> loginUser(
      {required String username, required String password}) async {
    return apiService.loginUser(username: username, password: password);
  }

  Future<UniversalData> register(
      {required RegisterUserModel registerUserModel}) async {
    return apiService.registerUser(registerUserModel: registerUserModel);
  }

  Future<UniversalData> getUser() async {
    return apiService.getUser();
  }

  String getToken() => StorageRepository.getString("access_token");
  String getRefreshToken() => StorageRepository.getString("refresh_token");

  Future<bool?> putToken(String token) async =>
      StorageRepository.putString("access_token", token);
  Future<bool?> putRefreshToken(String token) async =>
      StorageRepository.putString("refresh_token", token);

  Future<bool?> putTokenInMain(String token) async =>
      StorageRepository.putString("access_token", token);
  Future<bool?> putRefreshTokenInMain(String token) async =>
      StorageRepository.putString("refresh_token", token);

  Future<bool?> deleteToken() async =>
      StorageRepository.deleteString("access_token");
  Future<bool?> deleteRefreshToken() async =>
      StorageRepository.deleteString("refresh_token");

  Future<bool?> deleteTokens() async =>
      StorageRepository.deleteString("access_token");
  Future<bool?> deleteRefreshTokens() async =>
      StorageRepository.deleteString("refresh_token");
}
