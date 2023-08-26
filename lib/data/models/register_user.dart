class RegisterUserModel {
  int id;
  String fullName;
  String projectName;
  int categoryId;
  String phoneNumber;
  String address;

  RegisterUserModel({
    required this.id,
    required this.fullName,
    required this.projectName,
    required this.categoryId,
    required this.phoneNumber,
    required this.address,
  });

  factory RegisterUserModel.fromJson(Map<String, dynamic> json) =>
      RegisterUserModel(
        id: json["id"],
        fullName: json["full_name"],
        projectName: json["project_name"],
        categoryId: json["category_id"],
        phoneNumber: json["phone_number"],
        address: json["address"],
      );

  Map<String, dynamic> toJson() => {
        "full_name": fullName,
        "project_name": projectName,
        "category_id": categoryId,
        "phone_number": phoneNumber,
        "address": address,
      };
}
