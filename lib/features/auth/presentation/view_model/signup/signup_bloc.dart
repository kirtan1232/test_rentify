import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rentify_flat_management/core/common/snackbar/my_snackbar.dart';
import 'package:rentify_flat_management/features/auth/domain/use_case/signup_usecase.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignupUseCase _signupUseCase;

  SignupBloc({
    required SignupUseCase signupUseCase,
  })  : _signupUseCase = signupUseCase,
        super(SignupState.initial()) {
    on<SignupUser>(_onSignupEvent);
  }

  void _onSignupEvent(
    SignupUser event,
    Emitter<SignupState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _signupUseCase.call(SignupUserParams(
      fullname: event.fullName,
      phone: event.phone,
      email: event.email,
      password: event.password,
    ));

    result.fold(
      (l) => emit(state.copyWith(isLoading: false, isSuccess: false)),
      (r) {
        emit(state.copyWith(isLoading: false, isSuccess: true));
        showMySnackBar(
            context: event.context, message: "Registration Successful");
      },
    );
  }
}
