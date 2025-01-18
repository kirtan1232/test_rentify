import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rentify_flat_management/app/usecase/usecase.dart';
import 'package:rentify_flat_management/core/error/failure.dart';
import 'package:rentify_flat_management/features/auth/domain/entity/auth_entity.dart';
import 'package:rentify_flat_management/features/auth/domain/repository/auth_repository.dart';

class SignupUserParams extends Equatable {
  final String fullname;

  final String phone;
  final String email;
  final String password;

  const SignupUserParams({
    required this.fullname,
    required this.phone,
    required this.email,
    required this.password,
  });

  //intial constructor
  const SignupUserParams.initial({
    required this.fullname,
    required this.phone,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [fullname, phone, email, password];
}

class SignupUseCase implements UsecaseWithParams<void, SignupUserParams> {
  final IAuthRepository repository;

  SignupUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(SignupUserParams params) {
    final authEntity = AuthEntity(
      fullName: params.fullname,
      phone: params.phone,
      email: params.email,
      password: params.password,
    );
    return repository.signupUser(authEntity);
  }
}
