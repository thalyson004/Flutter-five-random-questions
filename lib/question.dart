class Question {
  String question;
  int correct;
  Question({String question, int correct}) {
    this.question = question;
    this.correct = correct;
  }

//  Question(this.question, this.correct);

}

class QuestionList {
  List<Question> _questions;
  int _currentQuestion;

  bool correct({int answer}) {
    return answer == _questions[_currentQuestion].correct;
  }

  void nextQuestion() {
    _currentQuestion++;
  }

  int listSize() => _questions.length;

  bool endGame() => _currentQuestion == _questions.length;

  String currentText() => _questions[_currentQuestion].question;

  void resetGame() {
    _currentQuestion = 0;
  }

  QuestionList() {
    _currentQuestion = 0;
    _questions = [
      Question(
        question: 'Alladin é um ladrão?',
        correct: 0,
      ),
      Question(
        question: 'A Viviane é a mais esperta do mundo?',
        correct: 0,
      ),
      Question(
        question: "HTML é uma linguagem de programação?",
        correct: 1,
      ),
      Question(
        question: "Python é uma linguagem interpretada?",
        correct: 0,
      ),
      Question(
        question: 'Listas em python são homogêneas?',
        correct: 1,
      ),
    ];
  }
}
