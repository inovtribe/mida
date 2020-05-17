import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';

NewEquipment _newEquipment;
bool _check1 = false;

class Question4c extends StatefulWidget {
  @override
  _Question4cState createState() => _Question4cState();
}

class _Question4cState extends State<Question4c> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Electricity Usage - (3/3)",
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
