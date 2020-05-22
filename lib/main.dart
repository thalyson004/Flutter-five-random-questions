import 'package:flutter/material.dart';
import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(MaterialApp(home: QuestionApp()));

class QuestionApp extends StatefulWidget {
  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<QuestionApp> {
  List<Widget> answer = [];
  List<Widget> icons = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];

  QuestionList questions = QuestionList();
  int correct = 0;

  void addAns(int i) {
    int ok = 0;
    if (questions.correct(answer: i)) {
      ok = 0;
      correct++;
    } else {
      ok = 1;
    }
    answer.add(icons[ok]);
    questions.nextQuestion();
  }

  Widget options() {
    if (!questions.endGame()) {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    questions.currentText(),
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  addAns(0);
                });
              },
              child: Text(
                "True",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              color: Colors.green,
            ),
            SizedBox(
              height: 10,
            ),
            FlatButton(
              color: Colors.red,
              onPressed: () {
                setState(() {
                  addAns(1);
                });
              },
              child: Text(
                "False",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: answer,
            ),
          ],
        ),
      );
    } else {
      Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.")
          .show();
      print("Acabou o jogo\n");
      return Expanded(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Parabéns!',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Text(
                      '$correct / ${questions.listSize()}',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: answer,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      color: Colors.blue[700],
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            questions.resetGame();
                            correct = 0;
                            answer.clear();
                          });
                        },
                        child: Text(
                          'restart',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            options(),
          ],
        ),
      ),
    );
  }
}
