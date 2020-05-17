import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';

YesNo _yesNo1;
bool _check1 = false;

class Question4b extends StatefulWidget {
  @override
  _Question4bState createState() => _Question4bState();
}

class _Question4bState extends State<Question4b> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Electricity Usage - (2/3)",
              size: 16,
              color: WHITE,
              bold: true,
            ),
            trailing: text(text: "[4/7]", size: 16, color: WHITE, bold: true),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 55),
          padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
          color: WHITE,
          child: ListView(
            children: <Widget>[
              text(
                text: "Meter Phase",
                color: BLUE,
                size: 13,
              ),
              // text(text: " *(required)", color: Colors.red, size: 13),
              DropDown(
                items: phase,
                value: "Select",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              text(
                text:
                    "What is the rating of the meter the shop uses? (Respondent should read this from the meter plate)",
                color: BLUE,
                size: 13,
              ),
              DropDown(
                items: rating,
                value: "Select",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              SizedBox(height: 10),
              text(
                  text:
                      "What type of electrical equipment/ machines are you currently using in the store/stall? Enumerators should list all items in the store/stall",
                  color: BLUE,
                  size: 13),
              checkBox("Grinding Machine"),
              checkBox("Grinding Machine"),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Electricity in a month",
                labelText: "How much do you pay for electricity in a month?",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              text(
                  text:
                      "The HVDS Project will provide you with a more stable and uninterrupted power. In view of this will you buy some new machine/equipment?",
                  color: BLUE,
                  size: 13),
              text(text: " *(required)", color: Colors.red, size: 13),
              yesNoRadioBution(),
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
        ListTile(
          title: const Text('Not sure', style: TextStyle(color: BLUE)),
          leading: Radio(
            activeColor: BLUE,
            value: YesNo.Not_Sure,
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
