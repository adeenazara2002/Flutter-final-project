import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';  // Add this line

// Controller for managing state using GetX
class HomeController extends GetxController {
  var selectedIndex = 0.obs; // Track selected tab index as an observable
  String getCurrentDayAndDate() {
    final now = DateTime.now();
    final formatter = DateFormat('EEEE, MMM d'); // Example: Monday, Sep 25
    return formatter.format(now);
  }

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController controller = Get.put(HomeController()); // Initialize controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set Scaffold background color to white
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu button tap
          },
        ),
        title: Container(
          color: Colors.white, // Ensure the title container is white
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16), // Adjust padding for better alignment
                child: Obx(() => Text(
                  controller.getCurrentDayAndDate(), // Display current day and date
                  style: const TextStyle(fontSize: 16, color: Colors.black), // Ensure text is visible on white
                )),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification tap
            },
          ),
        ],
        backgroundColor: Colors.white, // Set AppBar background to white
        iconTheme: const IconThemeData(color: Colors.black), // Set icon color to black for visibility
        elevation: 0, // Optional: Remove shadow for a flat design
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height - kToolbarHeight - kBottomNavigationBarHeight,
          ),
          child: Column(
            children: [
              // Image section
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16), // Add padding around the image
                child: Image.asset("assets/images/lets.png"),
              ),
              // Application Design and Progress Bar section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildProgressCard(
                        title: 'Application Design',
                        subtitle: 'UI Design Kit',
                        progressText: '50/80',
                        progressValue: 0.625,
                        cardColor: const Color.fromRGBO(117, 110, 243, 1),
                        textColor: Colors.white,
                      ),
                      const SizedBox(width: 15), // Space between cards
                      _buildProgressCard(
                        title: 'Overlay Design',
                        subtitle: 'UI Design Kit',
                        progressText: '50/80',
                        progressValue: 0.625,
                        cardColor: Colors.white,
                        textColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              // Task list section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'In Progress',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    const SizedBox(height: 8.0),
                    _TaskItem('Productivity Mobile App', 'Create Detail Booking', 60),
                    _TaskItem('Banking Mobile App', 'Revision Home Page', 70),
                    _TaskItem('Online Course', 'Working On Landing Page', 80),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.onItemTapped,
        selectedItemColor: const Color.fromRGBO(117, 110, 243, 1), // Set the selected icon color
        unselectedItemColor: Colors.grey, // Optional: set the unselected icon color
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      )),
    );
  }

  // Helper method to build progress cards
  Widget _buildProgressCard({
    required String title,
    required String subtitle,
    required String progressText,
    required double progressValue,
    required Color cardColor,
    required Color textColor,
  }) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 260,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Text(
            title,
            style: TextStyle(color: textColor, fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
        Positioned(
          top: 50,
          left: 17,
          child: Text(
            subtitle,
            style: TextStyle(color: textColor),
          ),
        ),
        Positioned(
          top: 85,
          left: 180,
          child: Text(
            progressText,
            style: TextStyle(color: textColor == Colors.white ? Colors.black : textColor, fontSize: 14, fontWeight: FontWeight.w700),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Row(
            children: [
              const Spacer(), // Spacer between text and progress bar
              Image.asset("assets/images/people.png"),
              const SizedBox(width: 8.0), // Gap between the text and progress bar
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: LinearProgressIndicator(
                    value: progressValue, // Adjust based on your progress
                    backgroundColor: Colors.grey,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Task Item widget
  Widget _TaskItem(String title, String description, int progress) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.black)),
              Text(description, style: const TextStyle(fontSize: 12.0, color: Colors.black)),
            ],
          ),
        ),
        const SizedBox(width: 8.0),
        Text('$progress%', style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}
