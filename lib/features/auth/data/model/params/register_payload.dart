import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class RegisterPayload {
  final String email;
  final String password;
  final String firstName;
  final String lastName;
  RegisterPayload({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
      'first_name': firstName,
      'last_name': lastName,
    };
  }

  factory RegisterPayload.fromMap(Map<String, dynamic> map) {
    return RegisterPayload(
      email: map['email'] as String,
      password: map['password'] as String,
      firstName: map['first_name'] as String,
      lastName: map['last_name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterPayload.fromJson(String source) =>
      RegisterPayload.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RegisterPayload(email: $email, password: $password, firstName: $firstName, lastName: $lastName)';
  }
}
