import 'package:quiz_app/models/question_model.dart';

class QuestionsManager {
  List<Question> questions = [
    Question(
      questionNumber: 1,
      title: 'How would you describe your level of satisfaction with the healthcare system?',
      options: [
      'Strongly satisfied',
      'Satisfied',
      'Neutral',
      'Not satisfied',
      ],
      isMultiAnswer: false,
      correctAnswers: []
      ),
    Question(
      questionNumber: 2,
      title:
          'What vitamins do you take?',
      options: [
      'Vitamin D3',
      'Vitamin B',
      'Zinc',
      'Magnesium',
      ],
      isMultiAnswer: true,
      correctAnswers: [],
    ),
    Question(
      questionNumber: 3,
      title:
          'Which mineral is essential for strong bones?',
      options: [
      'Calcium',
      'Iron',
      'Sodium',
      'Potassium',
      ],
      isMultiAnswer: true,
      correctAnswers: [],
    ),
    Question(
      questionNumber: 4,
      title:
          'Which vitamin is important for eye health?',
      options: [
      'Vitamin A',
      'Vitamin B12',
      'Vitamin C',
      'Vitamin E',
      ],
      isMultiAnswer: false,
      correctAnswers: [],
    ),

  ];

 
}
