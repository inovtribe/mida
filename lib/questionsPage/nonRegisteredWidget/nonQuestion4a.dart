import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';

YesNo _yesNo1;
bool _check1 = false;
NewEquipment _newEquipment;

class NonQuestion4a extends StatefulWidget {
  @override
  _NonQuestion4aState createState() => _NonQuestion4aState();
}

class _NonQuestion4aState extends State<NonQuestion4a> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Electricity Usage",
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
              text(
                  text:
                      "If Yes to the above what type of new equipment / machine will you buy ? (Enumerator should list machine/equipment)",
                  color: BLUE,
                  size: 13),
              checkBox("Grinding Machine"),
              checkBox("Grinding Machine"),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              text(
                  text:
                      "In case you want some new equipment, will you buy it with your own funds or you will have to seek some credit?",
                  color: BLUE,
                  size: 13),
              newEquipmentRadioBution(),
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

  Widget newEquipmentRadioBution() {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('From own funds', style: TextStyle(color: BLUE)),
          leading: Radio(
            activeColor: BLUE,
            value: NewEquipment.From_Own_Funds,
            groupValue: _newEquipment,
            onChanged: (NewEquipment value) {
              setState(() {
                _newEquipment = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Will need to access credit', style: TextStyle(color: BLUE)),
          leading: Radio(
            activeColor: BLUE,
            value: NewEquipment.Will_need_to_Access_Credit,
            groupValue: _newEquipment,
            onChanged: (NewEquipment value) {
              setState(() {
                _newEquipment = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Don\'t know', style: TextStyle(color: BLUE)),
          leading: Radio(
            activeColor: BLUE,
            value: NewEquipment.Donot_Know,
            groupValue: _newEquipment,
            onChanged: (NewEquipment value) {
              setState(() {
                _newEquipment = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
