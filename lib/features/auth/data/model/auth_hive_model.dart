// part 'auth_hive_model.g.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:rentify_flat_management/app/constants/hive_table_constants.dart';
import 'package:rentify_flat_management/features/auth/domain/entity/auth_entity.dart';
import 'package:uuid/uuid.dart';

part 'auth_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.userTableId)
class AuthHiveModel extends Equatable {
  @HiveField(0)
  final String? userId;
  @HiveField(1)
  final String fName;
  @HiveField(2)
  final String lName;
  @HiveField(3)
  final String phone;
  @HiveField(4)
  final String email;
  @HiveField(5)
  final String password;

  AuthHiveModel({
    String? userId,
    required this.fName,
    required this.lName,
    required this.phone,
    required this.email,
    required this.password,
  }) : userId = userId ?? const Uuid().v4();

  // Initial Constructor
  const AuthHiveModel.initial()
      : userId = '',
        fName = '',
        lName = '',
        phone = '',
        email = '',
        password = '';

  // From Entity
  factory AuthHiveModel.fromEntity(AuthEntity entity) {
    return AuthHiveModel(
      userId: entity.userId,
      fName: entity.fName,
      lName: entity.lName,
      phone: entity.phone,
      email: entity.email,
      password: entity.password,
    );
  }

  // To Entity
  AuthEntity toEntity() {
    return AuthEntity(
      userId: userId,
      fName: fName,
      lName: lName,
      phone: phone,
      email: email,
      password: password,
    );
  }

  @override
  List<Object?> get props => [userId, fName, lName, phone, email, password];
}
