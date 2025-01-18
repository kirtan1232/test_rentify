import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentify_flat_management/features/on_boarding_screen/presentation/view/on_boarding_screen_view.dart';
import 'package:rentify_flat_management/features/on_boarding_screen/presentation/view_model/on_boarding_screen_cubit.dart';

class SplashCubit extends Cubit<void> {
  SplashCubit(this._onboardingCubit) : super(null);

  final OnBoardingScreenCubit _onboardingCubit;

  Future<void> init(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2), () async {
      // Open Login page or Onboarding Screen

      if (context.mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider.value(
              value: _onboardingCubit,
              child: const OnboardingScreen(),
            ),
          ),
        );
      }
    });
  }
}
