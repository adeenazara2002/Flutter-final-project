// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart'; // Add this for date formatting

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0; // Track the selected tab index

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   // Function to get current day and date
//   String _getCurrentDayAndDate() {
//     final now = DateTime.now();
//     final formatter = DateFormat('EEEE, MMM d'); // Example: Monday, Sep 25
//     return formatter.format(now);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // Set Scaffold background color to white
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.menu),
//           onPressed: () {
//             // Handle menu button tap
//           },
//         ),
//         title: Container(
//           color: Colors.white, // Ensure the title container is white
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 60),
//                 child: Text(
//                   _getCurrentDayAndDate(), // Display current day and date
//                   style: const TextStyle(fontSize: 16, color: Colors.black), // Ensure text is visible on white
//                 ),
//               ),
//             ],
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications),
//             onPressed: () {
//               // Handle notification tap
//             },
//           ),
//         ],
//         backgroundColor: Colors.white, // Set AppBar background to white
//         iconTheme: const IconThemeData(color: Colors.black), // Set icon color to black for visibility
//         elevation: 0, // Optional: Remove shadow for a flat design
//       ),
//       body: SingleChildScrollView(
//         child: ConstrainedBox(
//           constraints: BoxConstraints(
//             minHeight: MediaQuery.of(context).size.height - kToolbarHeight - kBottomNavigationBarHeight,
//           ),
//           child: Column(
//             children: [
//               // Image section
//               Container(
//                 child: Image.asset("assets/images/lets.png"),
//               ),
//               // Application Design and Progress Bar section
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       // Stack for background container and progress details
//                       Stack(
//                         children: [
//                           Container(
//                             height: 150,
//                             width: 260,
//                             decoration: const BoxDecoration(
//                               color: Color.fromRGBO(117, 110, 243, 1),
//                               borderRadius: BorderRadius.all(Radius.circular(20)),
//                             ),
//                           ),
//                           Positioned(
//                             top: 16,
//                             left: 16,
//                             child: const Text(
//                               'Application Design',
//                               style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20),
//                             ),
//                           ),
//                           Positioned(
//                             top: 50,
//                             left: 17,
//                             child: const Text(
//                               'UI Design Kit',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                           Positioned(
//                             top: 85,
//                             left: 180,
//                             child: const Text(
//                               '50/80',
//                               style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w700),
//                             ),
//                           ),
//                           // Add progress bar, spacer, and percentage
//                           Positioned(
//                             bottom: 16,
//                             left: 16,
//                             right: 16,
//                             child: Row(
//                               children: [
//                                 const Spacer(), // Spacer between text and progress bar
//                                 Image.asset("assets/images/people.png"),
//                                 const SizedBox(width: 8.0), // Gap between the text and progress bar
//                                 Expanded(
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10.0),
//                                     child: LinearProgressIndicator(
//                                       value: 0.625, // Adjust based on your progress
//                                       backgroundColor: Colors.grey,
//                                       valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(width: 15,),
//                       Stack(
//                         children: [
//                           Container(
//                             height: 150,
//                             width: 260,
//                             decoration: const BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.all(Radius.circular(20)),
//                             ),
//                           ),
//                           Positioned(
//                             top: 16,
//                             left: 16,
//                             child: const Text(
//                               'Overlay Design',
//                               style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),
//                             ),
//                           ),
//                           Positioned(
//                             top: 50,
//                             left: 17,
//                             child: const Text(
//                               'UI Design Kit',
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ),
//                           Positioned(
//                             top: 85,
//                             left: 180,
//                             child: const Text(
//                               '50/80',
//                               style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w700),
//                             ),
//                           ),
//                           // Add progress bar, spacer, and percentage
//                           Positioned(
//                             bottom: 16,
//                             left: 16,
//                             right: 16,
//                             child: Row(
//                               children: [
//                                 const Spacer(), // Spacer between text and progress bar
//                                 Image.asset("assets/images/people.png"),
//                                 const SizedBox(width: 8.0), // Gap between the text and progress bar
//                                 Expanded(
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(10.0),
//                                     child: LinearProgressIndicator(
//                                       value: 0.625, // Adjust based on your progress
//                                       backgroundColor: Colors.grey,
//                                       valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               // Task list section
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'In Progress',
//                       style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
//                     ),
//                     const SizedBox(height: 8.0),
//                     _TaskItem('Productivity Mobile App', 'Create Detail Booking', 60),
//                     _TaskItem('Banking Mobile App', 'Revision Home Page', 70),
//                     _TaskItem('Online Course', 'Working On Landing Page', 80),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         selectedItemColor: const Color.fromRGBO(117, 110, 243, 1), // Set the selected icon color
//         unselectedItemColor: Colors.grey, // Optional: set the unselected icon color
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mail),
//             label: 'Messages',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add),
//             label: 'Add',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat),
//             label: 'Chat',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }

//   // Task Item widget
//   Widget _TaskItem(String title, String description, int progress) {
//     return Row(
//       children: [
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(title, style: const TextStyle(color: Colors.black)),
//               Text(description, style: const TextStyle(fontSize: 12.0, color: Colors.black)),
//             ],
//           ),
//         ),
//         const SizedBox(width: 8.0),
//         Text('$progress%', style: const TextStyle(color: Colors.black)),
//       ],
//     );
//   }
// }
