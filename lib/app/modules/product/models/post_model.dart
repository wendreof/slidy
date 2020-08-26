import 'dart:convert';

class PostModel {
  PostModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel copyWith({
    int userId,
    int id,
    String title,
    String body,
  }) =>
      PostModel(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory PostModel.fromJson(String str) => PostModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  static PostModel fromMap(dynamic json) => PostModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };

  static List<PostModel> fromJsonList(List list) {
    if (list == null) return null;
    return list.map<PostModel>(PostModel.fromMap).toList();
  }
}
