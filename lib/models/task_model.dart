class TaskModel {
  String id;
  String title;
  String description;
  DateTime dueDate;
  Priority priority;
  bool isCompleted;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    required this.dueDate,
    this.priority = Priority.medium,
    this.isCompleted = false,
  });
}

enum Priority { low, medium, high }