// import 'package:flutter/material.dart';
// import 'package:rentify_flat_management/view/signup_screen_view.dart';

// class OnboardingScreenView extends StatefulWidget {
//   const OnboardingScreenView({super.key});

//   @override
//   State<OnboardingScreenView> createState() => _OnboardingScreenViewState();
// }

// class _OnboardingScreenViewState extends State<OnboardingScreenView> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;

//   final List<Widget> _onboardingPages = [
//     const OnboardingPage(
//       imagePath: 'assets/images/logo.png',
//       title: 'Find Your Dream Flat\nEffortlessly',
//       description:
//           'Explore verified listings, connect with landlords,\nand rent your ideal flat with ease.',
//     ),
//     const OnboardingPage(
//       imagePath: 'assets/images/verify.png',
//       title: 'Get Verified Listings',
//       description:
//           'Access a wide range of verified listings\nwith accurate information to avoid hassle.',
//     ),
//     const OnboardingPage(
//       imagePath: 'assets/images/payment.png',
//       title: 'Easy & Secure Transactions',
//       description:
//           'Make payments securely and track your\ntransactions for a stress-free experience.',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background gradient
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xFF28CC0D), Color(0xFF8BF979)],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),

//           // PageView for Onboarding Screens
//           PageView.builder(
//             controller: _pageController,
//             itemCount: _onboardingPages.length,
//             onPageChanged: (index) {
//               setState(() {
//                 _currentPage = index;
//               });
//             },
//             itemBuilder: (context, index) {
//               return _onboardingPages[index];
//             },
//           ),

//           // Skip Button (only on slide 1 and slide 2)
//           if (_currentPage < _onboardingPages.length - 1)
//             Positioned(
//               top: 50,
//               right: 20,
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const SignupScreenView(),
//                     ),
//                   );
//                 },
//                 child: const Text(
//                   'Skip',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),

//           // Bottom Page Indicator and "Get Started" Button on Slide 3
//           Positioned(
//             bottom: 40,
//             left: 0,
//             right: 0,
//             child: Column(
//               children: [
//                 // Page Indicator Dots
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List.generate(
//                     _onboardingPages.length,
//                     (index) => Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 4),
//                       width: 10,
//                       height: 10,
//                       decoration: BoxDecoration(
//                         color: _currentPage == index
//                             ? Colors.white
//                             : Colors.white38,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),

//                 // "Get Started" Button (only on the last page)
//                 if (_currentPage == _onboardingPages.length - 1)
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SignupScreenView()),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 40,
//                         vertical: 15,
//                       ),
//                     ),
//                     child: const Text(
//                       'Get Started',
//                       style: TextStyle(
//                         fontSize: 18,
//                         color: Color(0xFF28CC0D),
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // A reusable widget for onboarding pages
// class OnboardingPage extends StatelessWidget {
//   final String imagePath;
//   final String title;
//   final String description;

//   const OnboardingPage({
//     super.key,
//     required this.imagePath,
//     required this.title,
//     required this.description,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Image
//           Image.asset(
//             imagePath,
//             height: 200,
//           ),
//           const SizedBox(height: 40),

//           // Title
//           Text(
//             title,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(height: 20),

//           // Description
//           Text(
//             description,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 16,
//               color: Colors.white70,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
