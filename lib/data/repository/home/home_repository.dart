import 'package:flutter_team/data/network/api_service.dart';
import '../../models/universal_data.dart';

class HomeRepository{
  final ApiService apiService;

  HomeRepository({required this.apiService});

  Future<UniversalData>getAllProducts()=>apiService.getAllProducts();
}