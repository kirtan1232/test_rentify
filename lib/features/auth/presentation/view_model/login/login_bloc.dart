import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentify_flat_management/core/common/snackbar/my_snackbar.dart';
import 'package:rentify_flat_management/features/auth/domain/use_case/login_usecase.dart';
import 'package:rentify_flat_management/features/auth/presentation/view_model/signup/signup_bloc.dart';
import 'package:rentify_flat_management/features/home/presentation/view/home_view.dart';
import 'package:rentify_flat_management/features/home/presentation/view_model/home_cubit.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final SignupBloc _signupBloc;
  final HomeCubit _homeCubit;
  final LoginUseCase _loginUseCase;

  LoginBloc({
    required SignupBloc signupBloc,
    required HomeCubit homeCubit,
    required LoginUseCase loginUseCase,
  })  : _signupBloc = signupBloc,
        _homeCubit = homeCubit,
        _loginUseCase = loginUseCase,
        super(LoginState.initial()) {
    on<NavigateRegisterScreenEvent>(
      (event, emit) {
        Navigator.push(
          event.context,
          MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
              providers: [
                BlocProvider.value(value: _signupBloc),
              ],
              child: event.destination,
            ),
          ),
        );
      },
    );

    on<NavigateHomeScreenEvent>(
      (event, emit) {
        Navigator.pushReplacement(
          event.context,
          MaterialPageRoute(
            builder: (context) => BlocProvider.value(
              value: _homeCubit,
              child: event.destination,
            ),
          ),
        );
      },
    );

    on<LoginUserEvent>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final result = await _loginUseCase(
          LoginParams(
            email: event.email,
            password: event.password,
          ),
        );

        result.fold(
          (failure) {
            emit(state.copyWith(isLoading: false, isSuccess: false));
            showMySnackBar(
              context: event.context,
              message: "Invalid Credentials",
              color: Colors.red,
            );
          },
          (token) {
            emit(state.copyWith(isLoading: false, isSuccess: true));
            showMySnackBar(
              context: event.context,
              message: "Login Successful",
            );

            add(
              NavigateHomeScreenEvent(
                context: event.context,
                destination: const HomeView(),
              ),
            );
            // _homeCubit.setToken(token);
          },
        );
      },
    );
  }
}
