class CategoryChildsModel{
  int id;
  String name;

  CategoryChildsModel({
    required this.id,
    required this.name,
  });

  factory CategoryChildsModel.fromJson(Map<String, dynamic> json) => CategoryChildsModel(
    id: json["id"] as int? ?? 0,
    name: json["name"] as String? ?? '',
  );

  Map<String, dynamic> toJson() => {
    "name": name,
  };

  @override
  String toString() {
    return '''
    id: $id,
    name: $name
    ''';
  }
}