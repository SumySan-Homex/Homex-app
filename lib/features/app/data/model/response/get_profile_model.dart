import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class GetProfileModel {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  GetProfileModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
    };
  }

  factory GetProfileModel.fromMap(Map<String, dynamic> map) {
    return GetProfileModel(
      id: map['id'] as int,
      email: map['email'] as String,
      firstName: map['first_name'] as String,
      lastName: map['last_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GetProfileModel.fromJson(String source) =>
      GetProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
