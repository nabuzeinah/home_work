import 'package:quiz_app/models/question_model.dart';

class QuestionsManager {
  List<Question> questions = [
    Question(
      questionNumber: 1,
      title: 'How would you describe your level of satisfaction with the healthcare system?',
      firstOption: 'Strongly satisfied',
      secondOption: 'Satisfied',
      thirdOption: 'Neutral',
      fourthOption: 'Not satisfied',
      correctAnswerNumber: 2
      ),
    Question(
      questionNumber: 2,
      title:
          'What vitamins do you take?',
      firstOption: 'Vitamin D3',
      secondOption: 'Vitamin B',
      thirdOption: 'Zinc',
      fourthOption: 'Magnesium',
      correctAnswerNumber: 4,
    ),
    Question(
      questionNumber: 3,
      title:
          'Which mineral is essential for strong bones?',
      firstOption: 'Calcium',
      secondOption: 'Iron',
      thirdOption: 'Sodium',
      fourthOption: 'Potassium',
      correctAnswerNumber: 1,
    ),
    Question(
      questionNumber: 4,
      title:
          'Which vitamin is important for eye health?',
      firstOption: 'Vitamin A',
      secondOption: 'Vitamin B12',
      thirdOption: 'Vitamin C',
      fourthOption: 'Vitamin E',
      correctAnswerNumber: 3,
    ),

  ];

 
}
