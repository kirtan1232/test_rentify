// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:rentify_flat_management/features/auth/presentation/view/login_view.dart';

// class SignupScreenView extends StatelessWidget {
//   const SignupScreenView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final fullNameController = TextEditingController();
//     final phoneController = TextEditingController();
//     final emailController = TextEditingController();
//     final passwordController = TextEditingController();
//     final confirmPasswordController = TextEditingController();

//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(
//                     'assets/images/background.jpg'), // Use the same image as login
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),

//           // Centered Card
//           Center(
//             child: SingleChildScrollView(
//               child: Container(
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: Colors.white, // White container for content
//                   borderRadius: BorderRadius.circular(15),
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.black12,
//                       offset: Offset(0, 4),
//                       blurRadius: 10,
//                       spreadRadius: 1,
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Signup Image
//                     Center(
//                       child: Image.asset(
//                         'assets/images/logo.png', // Replace with your asset path
//                         height: 100,
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Title
//                     const Center(
//                       child: Text(
//                         "Create Your Account",
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF4CAF50),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Full Name Field
//                     TextField(
//                       controller: fullNameController,
//                       decoration: InputDecoration(
//                         labelText: "Full Name",
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),

//                     // Phone Number Field
//                     TextField(
//                       controller: phoneController,
//                       keyboardType: TextInputType.phone,
//                       inputFormatters: [
//                         FilteringTextInputFormatter.digitsOnly,
//                         LengthLimitingTextInputFormatter(10),
//                       ],
//                       decoration: InputDecoration(
//                         labelText: "Phone Number",
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),

//                     // Email Field
//                     TextField(
//                       controller: emailController,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecoration(
//                         labelText: "Email",
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),

//                     // Password Field
//                     TextField(
//                       controller: passwordController,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         labelText: "Password",
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),

//                     // Confirm Password Field
//                     TextField(
//                       controller: confirmPasswordController,
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         labelText: "Confirm Password",
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 20),

//                     // Sign Up Button
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           // Validation logic here
//                           if (fullNameController.text.isEmpty ||
//                               phoneController.text.isEmpty ||
//                               emailController.text.isEmpty ||
//                               passwordController.text.isEmpty ||
//                               confirmPasswordController.text.isEmpty) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text("All fields are required."),
//                                 backgroundColor: Colors.red,
//                               ),
//                             );
//                           } else if (phoneController.text.length != 10) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text(
//                                     "Phone number must be exactly 10 digits."),
//                                 backgroundColor: Colors.red,
//                               ),
//                             );
//                           } else if (passwordController.text !=
//                               confirmPasswordController.text) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text("Passwords do not match."),
//                                 backgroundColor: Colors.red,
//                               ),
//                             );
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text("Account Created Successfully!"),
//                                 backgroundColor: Colors.green,
//                               ),
//                             );
//                           }
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFF4CAF50),
//                           padding: const EdgeInsets.symmetric(vertical: 15),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                         ),
//                         child: const Text(
//                           "Sign Up",
//                           style: TextStyle(fontSize: 18, color: Colors.white),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 10),

//                     // Already have an account? Login now
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Already have an account? "),
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const LoginScreenView(),
//                               ),
//                             );
//                           },
//                           child: const Text(
//                             "Login now",
//                             style: TextStyle(
//                               color: Color(0xFF4CAF50),
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
