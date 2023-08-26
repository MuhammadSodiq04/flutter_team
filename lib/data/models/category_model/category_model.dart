import 'package:flutter_team/data/models/category_model/category_childs.dart';

class CategoryModel {
  int id;
  String name;
  String adsCount;
  String icon;
  List<CategoryChildsModel> childs;

  CategoryModel({
    required this.id,
    required this.name,
    required this.adsCount,
    required this.icon,
    required this.childs,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json["id"] as int? ?? 0,
    name: json["name"] as String? ?? '',
    adsCount: json["ads_count"] as String? ?? '',
    icon: json["icon"] as String? ?? '',
    childs: (json["childs"] as List).map((e) => CategoryChildsModel.fromJson(e)).toList(),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "ads_count": adsCount,
    "icon": icon,
    "childs": childs,
  };

  @override
  String toString() {
    return '''
    id: $id,
    name: $name,
    ads_count: $adsCount,
    icon: $icon,
    childs: $childs,
    ''';
  }
}
