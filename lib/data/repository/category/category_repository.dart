import 'package:flutter_team/data/models/universal_data.dart';
import 'package:flutter_team/data/network/api_service.dart';

class CategoryRepository{
  final ApiService apiService;

  CategoryRepository({
    required this.apiService
});

  Future<UniversalData> getAllCategory() => apiService.getAllCategory();
}