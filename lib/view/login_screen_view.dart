// import 'package:flutter/material.dart';
// import 'package:rentify_flat_management/view/dashboard_screen_view.dart';
// import 'package:rentify_flat_management/view/signup_screen_view.dart';

// class LoginScreenView extends StatelessWidget {
//   const LoginScreenView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final emailController = TextEditingController();
//     final passwordController = TextEditingController();

//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(
//                     'assets/images/background.jpg'), // Your background image
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // White Card in Center
//           Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Welcome Header
//                   const Text(
//                     "Welcome",
//                     style: TextStyle(
//                       fontSize: 28,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.green,
//                     ),
//                   ),
//                   const SizedBox(height: 5),
//                   const Text(
//                     "Login to your account",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.green,
//                     ),
//                   ),
//                   const SizedBox(height: 30),

//                   // Card for Form Fields
//                   Container(
//                     margin: const EdgeInsets.symmetric(horizontal: 20),
//                     padding: const EdgeInsets.all(20),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(20),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Colors.black26,
//                           blurRadius: 10,
//                           offset: Offset(0, 5),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Email Field
//                         TextField(
//                           controller: emailController,
//                           decoration: InputDecoration(
//                             labelText: "Email",
//                             prefixIcon:
//                                 const Icon(Icons.email, color: Colors.green),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),

//                         // Password Field
//                         TextField(
//                           controller: passwordController,
//                           obscureText: true,
//                           decoration: InputDecoration(
//                             labelText: "Password",
//                             prefixIcon:
//                                 const Icon(Icons.lock, color: Colors.green),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             suffixText: "Forgot?",
//                             suffixStyle: const TextStyle(color: Colors.green),
//                           ),
//                         ),
//                         const SizedBox(height: 30),

//                         // Sign In Button
//                         SizedBox(
//                           width: double.infinity,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // Validation logic
//                               String email = emailController.text.trim();
//                               String password = passwordController.text;

//                               if (email.isEmpty || password.isEmpty) {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   const SnackBar(
//                                     content: Text(
//                                         "Email and password are required."),
//                                     backgroundColor: Colors.red,
//                                   ),
//                                 );
//                                 return;
//                               }

//                               // Navigate to Dashboard
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => const Dashboard()),
//                               );
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.green,
//                               padding: const EdgeInsets.symmetric(vertical: 15),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                             child: const Text(
//                               "Sign in",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),

//                         // Or Divider
//                         const Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Expanded(
//                               child:
//                                   Divider(color: Colors.black26, thickness: 1),
//                             ),
//                             SizedBox(width: 10),
//                             Text(
//                               "or",
//                               style: TextStyle(color: Colors.black54),
//                             ),
//                             SizedBox(width: 10),
//                             Expanded(
//                               child:
//                                   Divider(color: Colors.black26, thickness: 1),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 20),

//                         // Sign in with Google
//                         SizedBox(
//                           width: double.infinity,
//                           child: OutlinedButton(
//                             onPressed: () {
//                               // Handle Google Sign In logic
//                             },
//                             style: OutlinedButton.styleFrom(
//                               padding: const EdgeInsets.symmetric(vertical: 15),
//                               side: const BorderSide(color: Colors.green),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                             child: const Text(
//                               "Sign in with Google",
//                               style: TextStyle(
//                                 color: Colors.green,
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),

//                   // Sign Up Text
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SignupScreenView()),
//                       );
//                     },
//                     child: const Text(
//                       "Create account? Sign up",
//                       style: TextStyle(
//                         color: Colors.green,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
