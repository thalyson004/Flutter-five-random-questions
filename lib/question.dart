import 'dart:math';

class Question {
  String question;
  int correct;
  Question({String question, int correct}) {
    this.question = question;
    this.correct = correct;
  }
}

class QuestionList {
  List<Question> _questions;
  int _currentQuestion;
  int _numberOfQuestions;

  bool correct({int answer}) {
    return answer == _questions[_currentQuestion].correct;
  }

  int numberOfQuestions() => _numberOfQuestions;

  void resetGame() {
    this._currentQuestion = 0;
    shuffleQuestions();
  }

  void nextQuestion() {
    _currentQuestion++;
  }

  void shuffleQuestions() {
    _questions.shuffle();
  }

  int listSize() => _questions.length;

  bool endGame() => _currentQuestion == _numberOfQuestions;

  String currentText() => _questions[_currentQuestion].question;

  QuestionList() {
    _numberOfQuestions = 5;
    _currentQuestion = 0;
    _questions = [
      Question(
        question: 'Is Alladin a thief?',
        correct: 0,
      ),
      Question(
        question: "Is HTML a programming language?",
        correct: 1,
      ),
      Question(
        question: "Is Python an interpreted language?",
        correct: 0,
      ),
      Question(
        question: 'Are python lists homogeneous?',
        correct: 1,
      ),
      Question(
        question:
            'Cyclones spin in a clockwise direction in the southern hemisphere.',
        correct: 1,
      ),
      Question(
        question: 'Goldfish only have a memory of three seconds.',
        correct: 0,
      ),
      Question(
        question: 'The capital of Libya is Benghazi.',
        correct: 1,
      ),
      Question(
        question:
            'Brazil is the only country in the Americas to have the official language of Portuguese.',
        correct: 0,
      ),
      Question(
        question: 'The Channel Tunnel is the longest rail tunnel in the world.',
        correct: 1,
      ),
      Question(
        question:
            'Darth Vader famously says the line \“Luke, I am your father\” in The Empire Strikes Back.',
        correct: 1,
      ),
      Question(
        question:
            'Olivia Newton-John represented the UK in the Eurovision Song Contest in 1974, the year ABBA won with “Waterloo”.',
        correct: 0,
      ),
      Question(
        question: 'Stephen Hawking declined a knighthood from the Queen.',
        correct: 0,
      ),
      Question(
        question: 'The highest mountain in England is Ben Nevis.',
        correct: 1,
      ),
      Question(
        question:
            'Nicolas Cage and Michael Jackson both married the same woman.',
        correct: 0,
      ),
      Question(
        question:
            'Japan and Russia did not sign a peace treaty after World War Two so are technically still at war.',
        correct: 0,
      ),
      Question(
        question:
            'The mathematical name for the shape of a Pringle is hyperbolic paraboloid',
        correct: 0,
      ),
      Question(
        question:
            'Charlie Chaplin came first in a Charlie Chaplin look-alike contest.',
        correct: 1,
      ),
      Question(
        question: 'Michael Keaton’s real name is Michael Douglas.',
        correct: 0,
      ),
      Question(
        question: 'Napoleon was of below-average height.',
        correct: 1,
      ),
      Question(
        question: 'Donald Duck’s middle name is Fauntelroy.',
        correct: 0,
      ),
      Question(
        question: 'The Statue of Liberty was a gift from France.',
        correct: 0,
      ),
      Question(
        question:
            'According to Scottish law, it is illegal to be drunk in charge of a cow.',
        correct: 0,
      ),
      Question(
        question: 'The Great Wall of China is visible from space.',
        correct: 1,
      ),
      Question(
        question: 'The first tea bags were made of silk.',
        correct: 0,
      ),
      Question(
        question: 'Meghan Markle’s first name is Rachel.',
        correct: 0,
      ),
      Question(
        question: 'Warsaw is the capital of Bulgaria.',
        correct: 1,
      ),
      Question(
        question: 'A metre is further than a yard.',
        correct: 0,
      ),
      Question(
        question: 'A woman has walked on the moon.',
        correct: 1,
      ),
      Question(
        question:
            'Flying in an aeroplane is statistically safer than driving in a car.',
        correct: 0,
      ),
      Question(
        question: 'John Challis plays Boycie in Only Fools and Horses.',
        correct: 0,
      ),
      Question(
        question: 'Valletta is the capital of Cyprus.',
        correct: 1,
      ),
      Question(
        question: 'The currency of France is the Franc.',
        correct: 1,
      ),
      Question(
        question: 'Ben Nevis is the tallest mountain in the UK.',
        correct: 0,
      ),
      Question(
        question: 'Radiohead wrote the song Love is All Around.',
        correct: 1,
      ),
      //TODO: Add more questions
    ];
    shuffleQuestions();
  }
}
