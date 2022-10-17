import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback? resetHandler;

  Result(this.resultScore, this.resetHandler);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore == 7) {
      resultText = 'You are awesome! 7 Out of 7 answers are correct';
      //print(resultScore);
    } else if (resultScore == 6) {
      resultText = 'Pretty likeable! 6  Out of 7 answers are correct';
      //print(resultScore);
    } else if (resultScore == 5) {
      resultText = 'You need to work more! 5 Out of 7 answers are correct';
      //print('');
    } else if (resultScore == 4) {
      resultText = 'You need to work hard! 4 Out of 7 answers are correct';

    } else if( resultScore==3){
      resultText = 'This is a poor score! 3 Out of 7 answers are correct';
      //print(resultScore);
    }
    else if( resultScore==2){
      resultText = 'This is a very poor score! 2 Out of 7 answers are correct';
      //print(resultScore);
    }
    else if(resultScore==1){
      resultText = 'This is a very poor score!! Try to improve in the next passages! Only 1 Out of 7 answers are correct';
      //print(resultScore);
    }
    else if(resultScore==0){
      resultText =
      'You have scored 0 out of 7 questions, Pick up your pace and do well in the next passages';
    }
    else{
      resultText =
      'You have scored 0 out of 7 questions, Pick up your pace and do well in the next passages';
    }
    return 'Thank you for your feedback!';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            'You rated us  ' '$resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
