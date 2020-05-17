import 'package:flutter/material.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/questionsPage/nonRegisteredWidget/nonQuestion3a.dart';
import 'package:mida_project/questionsPage/nonRegisteredWidget/nonQuestion4a.dart';
import 'package:mida_project/questionsPage/registeredWidget/question1a.dart';
import 'package:mida_project/questionsPage/registeredWidget/question1b.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2a.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2b.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2c.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2d.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2e.dart';
import 'package:mida_project/questionsPage/registeredWidget/question2f.dart';
import 'package:mida_project/questionsPage/registeredWidget/question3b.dart';
import 'package:mida_project/questionsPage/registeredWidget/questionend.dart';
import 'package:mida_project/spec/colors.dart';

class NewServiceQuestionPage extends StatefulWidget {
  final String title;
  NewServiceQuestionPage({@required this.title});

  @override
  _NewServiceQuestionPageState createState() => _NewServiceQuestionPageState();
}

class _NewServiceQuestionPageState extends State<NewServiceQuestionPage> {
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
     NonQuestion3a(),
     Question3b(),
     NonQuestion4a(),
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