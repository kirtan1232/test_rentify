import 'package:get_it/get_it.dart';
import 'package:rentify_flat_management/core/network/hive_service.dart';
import 'package:rentify_flat_management/features/auth/data/data_source/local_data_source/auth_local_datasource.dart';
import 'package:rentify_flat_management/features/auth/data/repository/auth_local_repository/auth_local_repository.dart';
import 'package:rentify_flat_management/features/auth/domain/use_case/login_usecase.dart';
import 'package:rentify_flat_management/features/auth/domain/use_case/signup_usecase.dart';
import 'package:rentify_flat_management/features/auth/presentation/view_model/login/login_bloc.dart';
import 'package:rentify_flat_management/features/auth/presentation/view_model/signup/signup_bloc.dart';
import 'package:rentify_flat_management/features/home/presentation/view_model/home_cubit.dart';
import 'package:rentify_flat_management/features/on_boarding_screen/presentation/view_model/on_boarding_screen_cubit.dart';
import 'package:rentify_flat_management/features/splash_screen/presentation/view_model/splash_cubit.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  // Initialize Hive Service
  await _initHiveService();

  // Initialize Splash Screen Dependencies
  await _initSplashDependencies();

  // Initialize Onboarding Screen Dependencies
  await _initOnboardingDependencies();

  // Initialize Login Screen Dependencies
  await _initLoginDependencies();

  // Initialize Signup Screen Dependencies
  await _initSignupDependencies();
  // Add this line
  await _initHomeDependencies(); // Add this line
}

_initHiveService() {
  // Register HiveService as a singleton
  getIt.registerLazySingleton<HiveService>(() => HiveService());
}

_initSplashDependencies() async {
  getIt.registerFactory<SplashCubit>(
    () => SplashCubit(getIt<OnBoardingScreenCubit>()),
    // () => SplashCubit(getIt<LoginBloc>()),
  );
}

_initOnboardingDependencies() async {
  getIt.registerFactory<OnBoardingScreenCubit>(
    () => OnBoardingScreenCubit(getIt<LoginBloc>()),
    // () => SplashCubit(getIt<LoginBloc>()),
  );
}

_initHomeDependencies() async {
  getIt.registerFactory<HomeCubit>(
    () => HomeCubit(),
  );
}

_initSignupDependencies() async {
  getIt.registerLazySingleton(
    () => AuthLocalDataSource(getIt<HiveService>()),
  );

  // init local repository
  getIt.registerLazySingleton(
    () => AuthLocalRepository(getIt<AuthLocalDataSource>()),
  );

  // register use usecase
  getIt.registerLazySingleton<SignupUseCase>(
    () => SignupUseCase(
      getIt<AuthLocalRepository>(),
    ),
  );

  getIt.registerFactory<SignupBloc>(
    () => SignupBloc(
      signupUseCase: getIt(),
    ),
  );
}

_initLoginDependencies() async {
  getIt.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(
      getIt<AuthLocalRepository>(),
    ),
  );

  getIt.registerFactory<LoginBloc>(
    () => LoginBloc(
      signupBloc: getIt<SignupBloc>(),
      homeCubit: getIt<HomeCubit>(),
      loginUseCase: getIt<LoginUseCase>(),
    ),
  );
}
