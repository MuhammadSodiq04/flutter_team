class UserModel {
  int id;
  String fullName;
  String email;
  String phoneNumber;
  String profilePhoto;
  Address address;
  int? categoryId;
  String? projectName;

  UserModel({
    this.projectName,
    required this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.profilePhoto,
    required this.address,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"] as int? ?? 0,
    fullName: json["full_name"],
    email: json["email"],
    phoneNumber: json["phone_number"],
    profilePhoto: json["profile_photo"],
    address: Address.fromJson(json["address"]),
  );

  Map<String, dynamic> toJson() => {
    "full_name": fullName,
    "projectName": projectName,
    "categoryId": categoryId,
    "email": email,
    "phone_number": phoneNumber,
    "profile_photo": profilePhoto,
    "address": address.toJson(),
  };
}

class Address {
  String name;
  double lat;
  double long;

  Address({
    required this.name,
    required this.lat,
    required this.long,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    name: json["name"],
    lat: json["lat"]?.toDouble(),
    long: json["long"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "lat": lat,
    "long": long,
  };
}
