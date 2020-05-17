import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';

YesNo _yesNo1;
bool _check1 = false;

class Question5a extends StatefulWidget {
  @override
  _Question5aState createState() => _Question5aState();
}

class _Question5aState extends State<Question5a> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Customers/Consumers Opinions",
              size: 16,
              color: WHITE,
              bold: true,
            ),
            trailing: text(text: "[5/7]", size: 16, color: WHITE, bold: true),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 55),
          padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
          color: WHITE,
          child: ListView(
            children: <Widget>[
              text(
                  text:
                      "Do you have any data errors on your bill to be corrected?",
                  color: BLUE,
                  size: 13),
              text(text: " *(required)", color: Colors.red, size: 13),
              yesNoRadioBution(),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              text(
                text:
                    "How would you describe the process of getting a new meter installed in the past?",
                color: BLUE,
                size: 13,
              ),
              DropDown(
                items: newMeter,
                value: "Select",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              SizedBox(height: 10),
              text(
                  text:
                      "How would you describe the process of getting a meter replaced in the past?",
                  color: BLUE,
                  size: 13),
              DropDown(
                items: replaceMeter,
                value: "Select",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget checkBox(String item) {
    return Row(
      children: <Widget>[
        Checkbox(
          activeColor: BLUE,
          onChanged: (bool value) {
            setState(() {
              _check1 = value;
            });
          },
          value: _check1,
        ),
        Expanded(
          child: text(text: "$item", color: BLUE, size: 13),
        ),
      ],
    );
  }

  Widget yesNoRadioBution() {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Yes', style: TextStyle(color: BLUE)),
          leading: Radio(
            activeColor: BLUE,
            value: YesNo.Yes,
            groupValue: _yesNo1,
            onChanged: (YesNo value) {
              setState(() {
                _yesNo1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('No', style: TextStyle(color: BLUE)),
          leading: Radio(
            activeColor: BLUE,
            value: YesNo.No,
            groupValue: _yesNo1,
            onChanged: (YesNo value) {
              setState(() {
                _yesNo1 = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
