part of 'signup_bloc.dart';

sealed class SignupEvent extends Equatable {
  const SignupEvent();

  @override
  List<Object> get props => [];
}


class SignupUser extends SignupEvent {
  final BuildContext context;
  final String fName;
  final String lName;
  final String phone;
  final String email;
  final String password;

  const SignupUser({
    required this.context,
    required this.fName,
    required this.lName,
    required this.phone,
    required this.email,
    required this.password,
  });
}
