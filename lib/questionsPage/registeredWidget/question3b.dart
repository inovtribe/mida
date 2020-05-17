import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';

YesNo _yesNo1;
Operator _operator;

class Question3b extends StatefulWidget {
  @override
  _Question3bState createState() => _Question3bState();
}

class _Question3bState extends State<Question3b> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Business Information - (2/2)",
              size: 16,
              color: WHITE,
              bold: true,
            ),
            trailing: text(text: "[3/7]", size: 16, color: WHITE, bold: true),
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
                    "Do you think the shop/stall requires new internal wiring to have a new meter installed?",
                color: BLUE,
                size: 13,
              ),
              text(text: " *(required)", color: Colors.red, size: 13),
              DropDown(
                items: shopRequires,
                value: "Select",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              text(
                  text:
                      "If the answer to the above is “Yes”, will you need to access credit to do it?",
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
          title: const Text('Don\'t Know', style: TextStyle(color: BLUE)),
          leading: Radio(
            activeColor: BLUE,
            value: YesNo.Donot_Know,
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
