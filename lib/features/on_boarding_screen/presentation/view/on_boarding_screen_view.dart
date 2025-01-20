import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:rentify_flat_management/features/on_boarding_screen/presentation/view_model/on_boarding_screen_cubit.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final OnBoardingScreenCubit _onBordingCubit;

  @override
  void initState() {
    super.initState();
    // context.read<SplashCubit>().init(context);
    _onBordingCubit = context.read<OnBoardingScreenCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: const Color.fromARGB(255, 61, 194, 65),
        pages: _onBordingCubit.getPages(context), // Fetch pages from ViewModel
        onDone: () => _onBordingCubit.navigateToLogin(context),
        onSkip: () => _onBordingCubit.navigateToLogin(context),
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Icon(Icons.arrow_forward),
        done: const Text("Get Started",
            style: TextStyle(fontWeight: FontWeight.bold)),
        dotsDecorator: _onBordingCubit.getDotsDecorator(),
      ),
    );
  }
}

// var viewModel = OnBordingCubit();
