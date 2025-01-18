// import 'package:flutter/material.dart';
// import 'package:rentify_flat_management/view/bar_code_view.dart';
// import 'package:rentify_flat_management/view/dashboard_screen_view.dart';
// import 'package:rentify_flat_management/view/notifcation_view.dart';
// import 'package:rentify_flat_management/view/search_view.dart';

// class SettingsView extends StatefulWidget {
//   const SettingsView({super.key});

//   @override
//   State<SettingsView> createState() => _SettingsViewState();
// }

// class _SettingsViewState extends State<SettingsView> {
//   int _selectedIndex = 4; // Set the default index to 4 for the Settings tab

//   // Function to handle BottomNavigationBar item tap
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });

//     switch (index) {
//       case 0:
//         // Navigate to Dashboard
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const Dashboard()),
//         );
//         break;
//       case 1:
//         // Navigate to FlatListScreen
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const FlatListScreen()),
//         );
//         break;
//       case 2:
//         // Navigate to BarCodeView
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const BarCodeView()),
//         );
//         break;
//       case 3:
//         // Navigate to NotificationView
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const NotifcationView()),
//         );
//         break;
//       case 4:
//         // Stay on the Settings screen (no navigation needed)
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
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.notifications_none,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//       body: const Center(
//         child: Text(
//           "Settings",
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
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
