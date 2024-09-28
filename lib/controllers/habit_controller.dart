import 'package:get/get.dart';
import 'package:mygroupproject/models/habit.dart';

class HabitController extends GetxController {
  final List<Habit> habits = [
    Habit(name: 'Application Design', progress: 50, isCompleted: false),
    Habit(name: 'Productivity Mobile App', progress: 60, isCompleted: false),
    Habit(name: 'Banking Mobile App', progress: 70, isCompleted: false),
    Habit(name: 'Online Course', progress: 80, isCompleted: false),
  ];

  void updateHabitProgress(int index, int newProgress) {
    habits[index].progress = newProgress;
    update();
  }

  void toggleHabitCompletion(int index) {
    habits[index].isCompleted = !habits[index].isCompleted;
    update();
  }
}