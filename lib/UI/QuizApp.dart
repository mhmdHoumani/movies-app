import 'package:first_project/Model/Question.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _cursor = 0;

  List<Question> questionBank = [
    Question("Question 1", true),
    Question("Question 2", true),
    Question("Question 3", false),
    Question("Question 4", true),
    Question("Question 5", false),
    Question("Question 6", false),
    Question("Question 7", true),
    Question("Question 8", true),
    Question("Question 9", true),
    Question("Question 10", false),
    Question("Question 11", false),
    Question("Question 12", true),
    Question("Question 13", false),
    Question("Question 14", true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True Citizen"),
        //backgroundColor: Colors.blueAccent.shade200,
      ),
      //backgroundColor: Colors.blueAccent.shade100,
      body: Builder(
        builder: (BuildContext context) => Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 30),
          child: Column(
            children: <Widget>[
              Image.asset(
                "images/flag.jpg",
                width: 250,
              ),
              Container(
                width: 410,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.blueGrey, style: BorderStyle.solid),
                ),
                child: Column(
                  children: [
                    Text(
                      questionBank[_cursor].getName,
                      style: TextStyle(
                        //fontSize: 25,
                        //color: Colors.blueGrey.shade800,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RaisedButton(
                            onPressed: () => _prevQuestion(),
                            color: Colors.blueGrey,
                            child:
                            Icon(Icons.arrow_back, color: Colors.white),
                          ),
                          RaisedButton(
                            onPressed: () => _checkAnswer(true, context),
                            //color: Colors.green.shade400,
                            child: Text("TRUE",
                                //style: TextStyle(color: Colors.white)
                              ),
                          ),
                          RaisedButton(
                            onPressed: () => _checkAnswer(false, context),
                            //color: Colors.red.shade400,
                            child: Text("FALSE",
                                //style: TextStyle(color: Colors.white)
                            ),
                          ),
                          RaisedButton(
                            onPressed: () => _nextQuestion(),
                            color: Colors.blueGrey,
                            child:
                                Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _checkAnswer(bool userChoice, BuildContext context) {
    if (userChoice == questionBank[_cursor].getAnswer)
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(milliseconds: 500),
          content: Text("Your answer is correct! :)",
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.green.shade200));
    else
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(milliseconds: 500),
          content: Text("Your answer is wrong! :(",
              style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.red.shade200));
    _nextQuestion();
  }

  _nextQuestion() {
    setState(() => _cursor = (_cursor + 1) % questionBank.length);
  }
  _prevQuestion() {
    setState(() => _cursor = (_cursor - 1) % questionBank.length);
  }
}
