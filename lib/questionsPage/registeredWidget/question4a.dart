import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';

class Question4a extends StatefulWidget {
  @override
  _Question4aState createState() => _Question4aState();
}

class _Question4aState extends State<Question4a> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Electricity Usage - (1/3)",
              size: 16,
              color: WHITE,
              bold: true,
            ),
            trailing: text(
              text: "[4/7]",
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
              text(text: "What Type Of Meter Do You Use?", color: BLUE, size: 13),
              DropDown(
                items: meter,
                value: "Select",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              SizedBox(height: 10),
              text(text: "Types of Tariff", color: BLUE, size: 13),
              DropDown(
                items: tariff,
                value: "Select",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Meter Number",
                labelText: "Meter Number",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Meter Brand",
                labelText: "Meter Brand",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Meter Model",
                labelText: "Meter Model",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Meter Name",
                labelText: "Meter Name",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Year of Manufacture",
                labelText: "Year of Manufacture",
                validate: false,
                icon: null,
                controller: null,
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
}
