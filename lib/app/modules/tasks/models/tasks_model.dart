import 'dart:convert';

class TasksModel {
  TasksModel({
    this.id,
    this.description,
  });

  final int id;
  final String description;

  TasksModel copyWith({
    int id,
    String description,
  }) =>
      TasksModel(
        id: id ?? this.id,
        description: description ?? this.description,
      );

  factory TasksModel.fromJson(String str) =>
      TasksModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TasksModel.fromMap(Map<String, dynamic> json) => TasksModel(
        id: json["id"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "description": description,
      };
}
