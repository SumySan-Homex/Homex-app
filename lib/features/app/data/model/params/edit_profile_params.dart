import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class EditProfileParams {
  final String email;
  final String firstName;
  final String lastName;
  EditProfileParams({
    required this.email,
    required this.firstName,
    required this.lastName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
    };
  }

  factory EditProfileParams.fromMap(Map<String, dynamic> map) {
    return EditProfileParams(
      email: map['email'] as String,
      firstName: map['first_name'] as String,
      lastName: map['last_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory EditProfileParams.fromJson(String source) =>
      EditProfileParams.fromMap(json.decode(source) as Map<String, dynamic>);
}
