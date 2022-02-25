import 'package:flutter/material.dart';

void main(){
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {

  void answerQuestion(){
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context){ 

    var questions = [
      'what\'s your favorite colour?',
      'what\'s your favorite animal?'
    ];

    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('My first App'),
      ),
      body: Column(children: [
        Text(questions[0]),
        RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
        RaisedButton(child: Text('Answer 2'), onPressed: () => print('answer 2 chosen') ,),
        RaisedButton(child: Text('Answer 3'), onPressed: null,),
        RaisedButton(child: Text('Answer 4'), onPressed: null,),
      ]),
    ) ,);
  }
}