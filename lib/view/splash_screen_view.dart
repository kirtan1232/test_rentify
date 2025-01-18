// import 'package:flutter/material.dart';
// import 'package:rentify_flat_management/view/on_boarding_screen_view.dart';
// import 'dart:async';


// class SplashScreenView extends StatefulWidget {
//   const SplashScreenView({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _SplashScreenViewState createState() => _SplashScreenViewState();
// }

// class _SplashScreenViewState extends State<SplashScreenView> {
//   @override
//   void initState() {
//     super.initState();

//     Timer(const Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const OnboardingScreenView()),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: TweenAnimationBuilder(
//           duration: const Duration(seconds: 3),
//           tween: Tween(begin: -1.0, end: 3.0),
//           curve: Curves.easeInOut,
//           builder: (context, double value, child) {
//             return ShaderMask(
//               shaderCallback: (Rect bounds) {
//                 return LinearGradient(
//                   colors: [
//                     Colors.white.withOpacity(0.6),
//                     Colors.transparent,
//                     Colors.white.withOpacity(0.6)
//                   ],
//                   begin: Alignment(-1 + value, 0),
//                   end: Alignment(1 + value, 0),
//                 ).createShader(bounds);
//               },
//               child: Image.asset(
//                 'assets/images/logo.png',
//                 width: 200,
//                 height: 200,
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }