import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginPayload {
  final String email;
  final String password;
  LoginPayload({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory LoginPayload.fromMap(Map<String, dynamic> map) {
    return LoginPayload(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginPayload.fromJson(String source) =>
      LoginPayload.fromMap(json.decode(source) as Map<String, dynamic>);
}
