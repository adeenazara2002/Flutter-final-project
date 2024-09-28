class Habit {
  String name;
  int progress;
  bool isCompleted;

  Habit({
    required this.name,
    this.progress = 0,
    this.isCompleted = false,
  });
}