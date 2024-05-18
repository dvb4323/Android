import 'package:flutter/material.dart';
import 'quiz_brain.dart';
import 'mode_screen.dart';
import 'learn_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quizzler(),
    ));

class Global {
  int point = 0;
  late String pointDisplay = point.toString();
}

class Quizzler extends StatefulWidget {
  const Quizzler({super.key});

  @override
  State<Quizzler> createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade800,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  int point = 0;
  late String pointDisplay = point.toString();
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          type: AlertType.error,
          title: 'Quiz Finished',
          desc: 'Your score is $point',
        ).show();
        quizBrain.resetQuestion();
        point = 0;
        pointDisplay = point.toString();
      } else {
        if (userPickedAnswer == correctAnswer) {
          // scoreKeeper.add(const Icon(
          //   Icons.check,
          //   color: Colors.green,
          // ));
          point++;
          pointDisplay = point.toString();
        } else {
          // scoreKeeper.add(const Icon(
          //   Icons.close,
          //   color: Colors.red,
          // ));
        }

        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            const SizedBox(
              width: 20,
            ),
            Flexible(
              flex: 1,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green.shade900,
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  // side: const BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ModeScreen()),
                  );
                },
                child: const Text(
                  'Mode',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              flex: 1,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.green.shade900,
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  // side: const BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LearnScreen()),
                  );
                },
                child: const Text(
                  'Learn',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 140,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green.shade900,
                shape: const ContinuousRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                // side: const BorderSide(color: Colors.white),
              ),
              onPressed: () {
                null;
              },
              child: Text(
                pointDisplay,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                iconColor: Colors.white,
                backgroundColor: Colors.green,
              ),
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                iconColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              child: const Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked false.
                checkAnswer(false);
              },
            ),
          ),
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
