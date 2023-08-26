class HomeModel {
  int count;
  int page;
  List<HomeResult> results;

  HomeModel({
    required this.count,
    required this.page,
    required this.results,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        count: json["count"],
        page: json["page"],
        results:
            List<HomeResult>.from(json["results"].map((x) => HomeResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class HomeResult {
  int id;
  String name;
  String slug;
  SubCategory subCategory;
  List<String> photos;
  int price;
  String currency;
  DateTime publishedAt;
  String description;
  String phoneNumber;
  Address address;
  Seller seller;
  Extra extra;

  HomeResult({
    required this.id,
    required this.name,
    required this.slug,
    required this.subCategory,
    required this.photos,
    required this.price,
    required this.currency,
    required this.publishedAt,
    required this.description,
    required this.phoneNumber,
    required this.address,
    required this.seller,
    required this.extra,
  });

  factory HomeResult.fromJson(Map<String, dynamic> json) => HomeResult(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        subCategory: SubCategory.fromJson(json["sub_category"]),
        photos: List<String>.from(json["photos"].map((x) => x)),
        price: json["price"],
        currency: json["currency"],
        publishedAt: DateTime.parse(json["published_at"]),
        description: json["description"],
        phoneNumber: json["phone_number"],
        address: Address.fromJson(json["address"]),
        seller: Seller.fromJson(json["seller"]),
        extra: Extra.fromJson(json["extra"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "sub_category": subCategory.toJson(),
        "photos": List<dynamic>.from(photos.map((x) => x)),
        "price": price,
        "currency": currency,
        "published_at": publishedAt.toIso8601String(),
        "description": description,
        "phone_number": phoneNumber,
        "address": address.toJson(),
        "seller": seller.toJson(),
        "extra": extra.toJson(),
      };
}

class Address {
  District district;
  String name;
  double lat;
  double long;

  Address({
    required this.district,
    required this.name,
    required this.lat,
    required this.long,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        district: District.fromJson(json["district"]),
        name: json["name"],
        lat: json["lat"]?.toDouble(),
        long: json["long"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "district": district.toJson(),
        "name": name,
        "lat": lat,
        "long": long,
      };
}

class District {
  int id;
  String name;
  Region region;

  District({
    required this.id,
    required this.name,
    required this.region,
  });

  factory District.fromJson(Map<String, dynamic> json) => District(
        id: json["id"],
        name: json["name"],
        region: Region.fromJson(json["region"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "region": region.toJson(),
      };
}

class Region {
  int id;
  String name;

  Region({
    required this.id,
    required this.name,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class Extra {
  bool isMine;
  String status;
  DateTime expiresAt;

  Extra({
    required this.isMine,
    required this.status,
    required this.expiresAt,
  });

  factory Extra.fromJson(Map<String, dynamic> json) => Extra(
        isMine: json["is_mine"],
        status: json["status"],
        expiresAt: DateTime.parse(json["expires_at"]),
      );

  Map<String, dynamic> toJson() => {
        "is_mine": isMine,
        "status": status,
        "expires_at":
            "${expiresAt.year.toString().padLeft(4, '0')}-${expiresAt.month.toString().padLeft(2, '0')}-${expiresAt.day.toString().padLeft(2, '0')}",
      };
}

class Seller {
  int id;
  String fullName;
  String profilePhoto;

  Seller({
    required this.id,
    required this.fullName,
    required this.profilePhoto,
  });

  factory Seller.fromJson(Map<String, dynamic> json) => Seller(
        id: json["id"],
        fullName: json["full_name"],
        profilePhoto: json["profile_photo"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "full_name": fullName,
        "profile_photo": profilePhoto,
      };
}

class SubCategory {
  int id;
  String name;
  Category category;

  SubCategory({
    required this.id,
    required this.name,
    required this.category,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        id: json["id"],
        name: json["name"],
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "category": category.toJson(),
      };
}

class Category {
  int id;
  String name;
  int adsCount;
  String icon;

  Category({
    required this.id,
    required this.name,
    required this.adsCount,
    required this.icon,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        adsCount: json["ads_count"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "ads_count": adsCount,
        "icon": icon,
      };
}
