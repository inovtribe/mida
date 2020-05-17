import 'package:flutter/material.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/questionsPage/registeredWidget/question1a.dart';
import 'package:mida_project/questionsPage/registeredWidget/question1b.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2a.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2b.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2c.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2d.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2e.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2f.dart';
import 'package:mida_project/questionsPage/registeredWidget/question3a.dart';
import 'package:mida_project/questionsPage/registeredWidget/question3b.dart';
import 'package:mida_project/questionsPage/registeredWidget/question4a.dart';
import 'package:mida_project/questionsPage/registeredWidget/question4b.dart';
import 'package:mida_project/questionsPage/registeredWidget/question4c.dart';
import 'package:mida_project/questionsPage/registeredWidget/question5a.dart';
import 'package:mida_project/questionsPage/registeredWidget/question6a.dart';
import 'package:mida_project/questionsPage/registeredWidget/questionend.dart';
import 'package:mida_project/spec/colors.dart';

class RegisteredQuestionPage extends StatefulWidget {
  final String title;
  RegisteredQuestionPage({@required this.title});

  @override
  _RegisteredQuestionPageState createState() => _RegisteredQuestionPageState();
}

class _RegisteredQuestionPageState extends State<RegisteredQuestionPage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Question1a(),
    Question1b(),
    Question2a(),
    Question2b(),
    Question2c(),
    Question2d(),
    Question2e(),
    Question2f(),
    Question3a(),
    Question3b(),
    Question4a(),
    Question4b(),
    Question4c(),
    Question5a(),
    Question6a(),
    Questionend(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: text(text: "Survey Questions", color: WHITE, bold: true),
          subtitle: text(text: widget.title, color: WHITE),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: BACKGROUND,
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: _customBottomBar(),
    );
  }

  Widget _customBottomBar() {
    return Container(
      color: BACKGROUND,
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          if (_selectedIndex > 0)
            FlatButton(
              shape: Border.all(color: BLUE),
              child: text(text: "PREVIOUS", color: BLUE, size: 14, bold: true),
              onPressed: () {
                setState(() {
                  _selectedIndex -= 1;
                });
              },
            ),
          SizedBox(width: 10),
          FlatButton(
            padding: EdgeInsets.only(right: 30, left: 30),
            child: text(text: "NEXT", color: WHITE, size: 14, bold: true),
            color: BLUE,
            onPressed: () {
              setState(() {
                if (_widgetOptions.length > _selectedIndex + 1)
                  _selectedIndex += 1;
                else
                  print("no widget available again");
              });
            },
          ),
        ],
      ),
    );
  }
}
