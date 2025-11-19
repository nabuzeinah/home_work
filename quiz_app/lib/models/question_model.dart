class Question {
  int? questionNumber;
  String? title;
  List<String> options;
  bool isMultiAnswer;
  List<String> correctAnswers;
  List<String>? userAnswers;

  Question({
    required this.questionNumber,
    required this.title,
    required this.options,
    required this.isMultiAnswer,
    required this.correctAnswers,
  });

  void updateAnswer(String answer) {
    userAnswers!.add(answer);
  }
}
