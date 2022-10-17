import 'package:flutter/material.dart';
import './quiz.dart';
import 'res_easy.dart';

class questions extends StatefulWidget {
  const questions({Key? key}) : super(key: key);

  @override
  _questionsState createState() => _questionsState();
}

class _questionsState extends State<questions> {
  final _questions = const [
    {
      'questionText': ' How much would you rate our service out of 5? ',
      'answers': [
        {'text': '5', 'score': 5},
        {'text': '4', 'score': 4},
        {'text': '3', 'score': 3},
        {'text': '2','score':2},
        {'text':'1','score': 1},
      ],
    },
    /*{
      'questionText': '2. This article describes different examples of how people made boats better over time. People started by building boats\n from tree trunks. What did they do to make these tree trunk boats better? ',
      'answers': [
        {'text': 'They tried adding sails to their boats', 'score': 1},
        {'text': 'They tried using the boats to cross the ocean', 'score': -1},
        {'text': 'They added steam engines to their boats', 'score': -1},

      ],
    },*/
   /* {
      'questionText': ' 3. When people added sails to their boats, they could trade food and other things with people far away\n '
          'Today, ships carry food and other things across oceans for people to buy and use\n'
          'Based on this evidence, what conclusion can you draw?',
      'answers': [
        {'text': 'Water travel is mostly important for exploring new lands', 'score': -1},
        {'text': 'People used to need water travel to trade things, but now people do not need it. ', 'score': -1},
        {'text': 'Water travel is still very important for trading goods and food. ', 'score': 1},

      ],
    },*/
   /* {
      'questionText': '4. This article describes some ways that people improved boats. What was the result of these improvements? ',
      'answers': [
        {'text': 'Boats could hold more people and move more smoothly.', 'score': -1},
        {'text': 'Boats could travel faster and go longer distances.', 'score': 1},
        {'text': 'Boats could float better and fit on smaller rivers', 'score': -1},

      ],
    },*/
   /* {
      'questionText':
      '5. What is the main idea of this article',
      'answers': [
        {
          'text': 'Over time, people have built better boats to travel on water',
          'score': 1,
        },
        {'text': 'Ocean travel is just as good as land travel for trading things', 'score': -1},
        {'text':'People made boats out of tree trunks to travel on water. ','score':-1},
      ],
    },*/
    /*
    {'questionText':'6.Read these sentences from the text\n'
        ' " Steamships, powered by steam engines, travelled across the ocean. Their trips took weeks not months"\n'
        'What does the word "their" refer to in this sentence?',
      'answers':[
        {
          'text':'steam ships','score':-1
        },
        {
          'text':'steam engines','score':-1
        },
        {
          'text': 'people','score':1
        },
      ],

    },*/
   /* {'questionText':'7. Choose the answer that best completes this sentence.\n'
        'Over time, people have built better ocean travel _______ they could trade goods and explore new lands',
    'answers':[
      {
        'text': 'so','score':1
      },
      {
        'text': 'because','score':-1
      },
      {
        'text': 'but','score':-1
      },
    ],


    },

    */
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

  }

  @override

  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PROVIDE YOUR FEEDBACK'),
          backgroundColor: Color(0xFF0D47A1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
