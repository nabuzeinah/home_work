class Question {
  int? questionNumber;
  String? title;
  String? firstOption;
  String? secondOption;
  String? thirdOption;
  String? fourthOption;
  int? userAnswerNumber;
  int? correctAnswerNumber;

  Question({
    this.questionNumber,
    this.title,
    this.firstOption,
    this.secondOption,
    this.thirdOption,
    this.fourthOption,
    this.correctAnswerNumber,
  });
}
