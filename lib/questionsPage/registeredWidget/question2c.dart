import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';

YesNo _yesNo1;

class Question2c extends StatefulWidget {
  @override
  _Question2cState createState() => _Question2cState();
}

class _Question2cState extends State<Question2c> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Personal Information –Tenant (Official Occupant) - (3/3)",
              size: 16,
              color: WHITE,
              bold: true,
            ),
            trailing: text(
              text: "[2/7]",
              size: 16,
              color: WHITE,
              bold: true
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 55),
          padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
          color: WHITE,
          child: ListView(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    text(
                        text: "Do you Have Any Special Needs?",
                        color: BLUE,
                        size: 13),
                    text(text: " *(required)", color: Colors.red, size: 13),
                  ],
                ),
              ),
              yesNoRadioBution(),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              SizedBox(height: 10),
              text(
                  text: "If Yes, In Which Area Do You Have A Need?",
                  color: BLUE,
                  size: 13),
              DropDown(
                items: area,
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

  Widget yesNoRadioBution() {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: ListTile(
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
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: ListTile(
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
        ),
      ],
    );
  }
}
