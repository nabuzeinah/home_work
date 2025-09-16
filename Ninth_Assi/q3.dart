/* Q3
 Create a class Grade with a private field _score.
 - The setter should only accept values 0–100, otherwise print 'Invalid score'.-
  Add a getter and a computed getter isPass that returns true if score ≥ 50.
 - In main(), demonstrate updating the score multiple times and printing results*/

void main() {
  Grade grade = Grade();

  grade.scroe = 75;
  print('Score: ${grade.score}, Passed: ${grade.isPass}');

  grade.scroe = 45;
  print('Score: ${grade.score}, Passed: ${grade.isPass}');

  grade.scroe = 120; // Invalid
  print('Score: ${grade.score}, Passed: ${grade.isPass}');
}

class Grade {
  int _score = 0;

  set scroe(int score) {
    if (score >= 0 && score <= 100) {
      this._score = score;
    } else {
      print('Invalid score');
    }
  }

  int get score => _score;

  bool get isPass => _score >= 50;
}
