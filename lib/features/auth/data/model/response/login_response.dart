import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginResponse {
  final String access;
  final String refresh;
  LoginResponse({
    required this.access,
    required this.refresh,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access': access,
      'refresh': refresh,
    };
  }

  factory LoginResponse.fromMap(Map<String, dynamic> map) {
    return LoginResponse(
      access: map['access'] as String,
      refresh: map['refresh'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResponse.fromJson(String source) =>
      LoginResponse.fromMap(json.decode(source) as Map<String, dynamic>);
}
