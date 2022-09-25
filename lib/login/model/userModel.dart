// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.emailId,
    required this.password,
  });

  String emailId;
  String password;

  factory User.fromJson(Map<String, dynamic> json) => User(
    emailId: json["emailId"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "emailId": emailId,
    "password": password,
  };
}
