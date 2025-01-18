// import 'package:flutter/material.dart';
// import 'package:rentify_flat_management/view/dashboard_screen_view.dart';
// import 'package:rentify_flat_management/view/notifcation_view.dart';
// import 'package:rentify_flat_management/view/search_view.dart';
// import 'package:rentify_flat_management/view/settings_view.dart';

// class BarCodeView extends StatefulWidget {
//   const BarCodeView({super.key});

//   @override
//   _BarCodeViewState createState() => _BarCodeViewState();
// }

// class _BarCodeViewState extends State<BarCodeView> {
//   int _selectedIndex = 2; // Set to the current page index (QR Scan)

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });

//     switch (index) {
//       case 0:
//         // Navigate to Dashboard
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const Dashboard(),
//           ),
//         );
//         break;
//       case 1:
//         // Navigate to Search
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const FlatListScreen(),
//           ),
//         );
//         break;
//       case 2:
//         // Stay on BarCodeView (QR Scanner)
//         break;
//       case 3:
//         // Navigate to Notifications
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const NotifcationView(),
//           ),
//         );
//         break;
//       case 4:
//         // Navigate to Settings
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => const SettingsView(),
//           ),
//         );
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false, // Remove the back button
//         title: const Text(
//           'Barcode View',
//           style: TextStyle(color: Colors.black),
//         ),
//         centerTitle: true,
//       ),
//       body: const Center(
//         child: Text(
//           'This is QR Scanner',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.green,
//         unselectedItemColor: Colors.grey,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: "Search",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.qr_code_scanner),
//             label: "Scan QR",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: "Notifications",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "Settings",
//           ),
//         ],
//       ),
//     );
//   }
// }
