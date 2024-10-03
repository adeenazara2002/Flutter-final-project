import 'package:flutterfinalproject/models/task_model.dart';
import 'package:get/get.dart';

class TaskStatusController extends GetxController {
  var taskList = <TaskModel>[].obs; // Observable list of TaskModel objects
  var progress = 0.0.obs; // Observable progress value

  // Populate taskList with some example tasks (for testing)
  @override
  void onInit() {
    super.onInit();
    taskList.addAll([
      TaskModel(
        id: '1',
        title: "Design UI",
        description: "Work on the UI design.",
        dueDate: DateTime.now().add(const Duration(days: 7)), // Example due date: 7 days from now
      ),
      TaskModel(
        id: '2',
        title: "Fix Bugs",
        description: "Resolve critical bugs.",
        dueDate: DateTime.now().add(const Duration(days: 3)), // Example due date: 3 days from now
      ),
      TaskModel(
        id: '3',
        title: "Testing",
        description: "Perform final testing.",
        dueDate: DateTime.now().add(const Duration(days: 10)), // Example due date: 10 days from now
      ),
    ]);
  }
}
