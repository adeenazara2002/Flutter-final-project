import 'package:get/get.dart';
import '../models/task_status_model.dart';

class TaskStatusController extends GetxController {
  
  var progress = 65.obs; 

  var taskList = <TaskModel>[
    TaskModel(title: 'Completed', description: '18 Task now · 18 Task Completed', count: 18),
    TaskModel(title: 'In Progress', description: '2 Task now · 1 started', count: 2),
    TaskModel(title: 'To Do', description: '2 Task now · 1 Upcoming', count: 2),
  ].obs;
}
