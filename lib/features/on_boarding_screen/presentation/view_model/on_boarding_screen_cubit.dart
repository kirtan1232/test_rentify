import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:rentify_flat_management/features/auth/presentation/view/login_view.dart';
import 'package:rentify_flat_management/features/auth/presentation/view_model/login/login_bloc.dart';

class OnBoardingScreenCubit extends Cubit<void> {
  OnBoardingScreenCubit(this._loginBloc) : super(null);
  final LoginBloc _loginBloc;

  List<PageViewModel> getPages(BuildContext context) {
    return [
      PageViewModel(
        title: "Find Your Dream Flat\nEffortlessly",
        body:
            "Explore verified listings, connect with landlords,\nand rent your ideal flat with ease.",
        image: Center(
          child: Image.asset('assets/images/logo.png', height: 200),
        ),
        decoration: getPageDecoration(),
      ),
      PageViewModel(
        title: "Get Verified Listings",
        body:
            "Access a wide range of verified listings\nwith accurate information to avoid hassle.",
        image: Center(
          child: Image.asset('assets/images/verify.png', height: 200),
        ),
        decoration: getPageDecoration(),
      ),
      PageViewModel(
        title: "Easy & Secure Transactions",
        body:
            "Make payments securely and track your\ntransactions for a stress-free experience.",
        image: Center(
          child: Image.asset('assets/images/payment.png', height: 200),
        ),
        decoration: getPageDecoration(),
      ),
    ];
  }

  // Page decoration for all pages
  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 16),
      bodyPadding: EdgeInsets.all(16.0),
      imagePadding: EdgeInsets.only(top: 40),
      pageColor: Color.fromARGB(255, 5, 228, 24), // Light green background
    );
  }

  // Dots decorator for pagination
  DotsDecorator getDotsDecorator() {
    return DotsDecorator(
      size: const Size(10, 10),
      color: Colors.grey,
      activeSize: const Size(22, 10),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      activeColor:
          const Color.fromARGB(239, 9, 218, 16), // Active dot color (green)
    );
  }

  // Navigation to Login Screen
  void navigateToLogin(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => BlocProvider.value(
                value: _loginBloc,
                child: LoginScreenView(),
              )),
    );
  }
}
