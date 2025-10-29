class Task {
  String title;
  DateTime createdDate;
  bool isCompleted;

  Task({
    required this.title,
    required this.createdDate,
    required this.isCompleted,
  });

  void completeTask() {
    isCompleted = true;
  }

  void unCompleteTask() {
    isCompleted = false;
  }
}
