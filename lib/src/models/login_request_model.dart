// To parse this JSON data, do
//
//     final loginRequest = loginRequestFromJson(jsonString);

import 'dart:convert';

LoginRequest loginRequestFromJson(String str) => LoginRequest.fromJson(json.decode(str));

String loginRequestToJson(LoginRequest data) => json.encode(data.toJson());

class LoginRequest {
  LoginRequest({
    required this.password,
    required this.email,
  });

  final String password;
  final String email;

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
    password: json["password"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "password": password ,
    "email": email ,
  };
}
