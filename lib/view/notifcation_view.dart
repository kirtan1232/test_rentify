// import 'package:flutter/material.dart';
// import 'package:rentify_flat_management/view/bar_code_view.dart';
// import 'package:rentify_flat_management/view/dashboard_screen_view.dart';
// import 'package:rentify_flat_management/view/search_view.dart';
// import 'package:rentify_flat_management/view/settings_view.dart';

// class NotifcationView extends StatefulWidget {
//   const NotifcationView({super.key});

//   @override
//   State<NotifcationView> createState() => _NotifcationViewState();
// }

// class _NotifcationViewState extends State<NotifcationView> {
//   int _selectedIndex = 3; // Set the default index to 3 for Notifications

//   // Handle navigation based on the selected index
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });

//     switch (index) {
//       case 0:
//         // Navigate to Dashboard (if not already on it)
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
//         // Navigate to Settings
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const SettingsView()),
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
//           "Notifications",
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
