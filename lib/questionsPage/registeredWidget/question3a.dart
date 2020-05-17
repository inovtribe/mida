import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';

YesNo _yesNo1;
Operator _operator;

class Question3a extends StatefulWidget {
  @override
  _Question3aState createState() => _Question3aState();
}

class _Question3aState extends State<Question3a> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Business Information - (1/2)",
              size: 16,
              color: WHITE,
              bold: true,
            ),
            trailing: text(
              text: "[3/7]",
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
              textFormField(
                hintText: "Type of Business Activity the store/stall owner undertakes (Insert ECG Activity Code)",
                labelText: "Type of Business Activity the store/stall owner undertakes (Insert ECG Activity Code)",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              text(
                  text: "Type of Space",
                  color: BLUE,
                  size: 13),
              DropDown(
                items: space,
                value: "Select",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    text(
                        text: "What is the status of the Operator ?",
                        color: BLUE,
                        size: 13),
                    // text(text: " *(required)", color: Colors.red, size: 13),
                  ],
                ),
              ),
              operatorRadioBution(),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Store/Stall No.",
                labelText: "Store/Stall No.",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "GPS Code",
                labelText: "GPS Code",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              text(
                  text: "How long ago was the internal wiring of your shop/stall undertaken?",
                  color: BLUE,
                  size: 13),
              DropDown(
                items: shopUndertaken,
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

  Widget operatorRadioBution() {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Business License Holder', style: TextStyle(color: BLUE)),
          leading: Radio(
            activeColor: BLUE,
            value: Operator.Business_License_Holder,
            groupValue: _operator,
            onChanged: (Operator value) {
              setState(() {
                _operator = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Other Permitted Occupant', style: TextStyle(color: BLUE)),
          leading: Radio(
            activeColor: BLUE,
            value: Operator.Other_Permitted_Occupant,
            groupValue: _operator,
            onChanged: (Operator value) {
              setState(() {
                _operator = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
