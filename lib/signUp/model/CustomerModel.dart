// To parse this JSON data, do
//
//     final customer = customerFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Customer customerFromJson(String str) => Customer.fromJson(json.decode(str));

String customerToJson(Customer data) => json.encode(data.toJson());

class Customer {
  Customer({
    required this.userName,
    required this.emailId,
    required this.password,
    required this.phoneNumber,
    required this.vehicals,
  });

  String userName;
  String emailId;
  String password;
  int phoneNumber;
  List<Vehical> vehicals;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    userName: json["userName"],
    emailId: json["emailId"],
    password: json["password"],
    phoneNumber: json["phoneNumber"],
    vehicals: List<Vehical>.from(json["vehicals"].map((x) => Vehical.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "userName": userName,
    "emailId": emailId,
    "password": password,
    "phoneNumber": phoneNumber,
    "vehicals": List<dynamic>.from(vehicals.map((x) => x.toJson())),
  };
}

class Vehical {
  Vehical({
    required this.vehicalType,
    required this.vehicalNumber,
    required this.vehicalModel,
  });

  String vehicalType;
  String vehicalNumber;
  String vehicalModel;

  factory Vehical.fromJson(Map<String, dynamic> json) => Vehical(
    vehicalType: json["vehicalType"],
    vehicalNumber: json["vehicalNumber"],
    vehicalModel: json["vehicalModel"],
  );

  Map<String, dynamic> toJson() => {
    "vehicalType": vehicalType,
    "vehicalNumber": vehicalNumber,
    "vehicalModel": vehicalModel,
  };
}
