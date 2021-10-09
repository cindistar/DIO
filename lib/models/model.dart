import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    required this.name,
    required this.avatar,
    required this.profession,
    required this.id,
  });

  final String name;
  final String avatar;
  final String profession;
  final String id;

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: json["name"],
        avatar: json["avatar"],
        profession: json["profession"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "avatar": avatar,
        "profession": profession,
        "id": id,
      };

  factory User.fromMap(Map<String, dynamic> json) => User(
        name: json["name"],
        avatar: json["avatar"],
        profession: json["profession"],
        id: json["id"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "avatar": avatar,
        "profession": profession,
        "id": id,
      };
}
