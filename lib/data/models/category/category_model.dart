import 'package:flutter_team/data/models/category/category_childs.dart';

class CategoryModel {
  int id;
  String name;
  String adsCount;
  String icon;
  CategoryChildsModel childs;

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
    childs: CategoryChildsModel.fromJson(json["childs"]),
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
