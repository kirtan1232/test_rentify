import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String? userId;
  final String fName;
  final String lName;

  final String phone;

  final String email;
  final String password;

  const AuthEntity({
    this.userId,
    required this.fName,
    required this.lName,
    required this.phone,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [userId, fName, lName, phone, email, password];
}
