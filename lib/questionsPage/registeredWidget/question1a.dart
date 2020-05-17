import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';


class Question1a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Background Characteristics - (1/2)",
              size: 16,
              color: WHITE,
              bold: true
            ),
            trailing: text(
              text: "[1/7]",
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
                hintText: "Name",
                labelText: "Name Of Enumerator",
                validate: false,
                icon: null,
                controller: null,
                maxLine: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                  hintText: "Date",
                  labelText: "Date Of Interview",
                  validate: false,
                  icon: null,
                  controller: null,
                  enable: false),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Time",
                labelText: "Start time",
                validate: false,
                icon: null,
                controller: null,
                enable: false,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              SizedBox(height: 10),
              text(text: "Type of Respondent", color: BLUE, size: 13),
              DropDown(
                items: respondant,
                value: "Select response",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              SizedBox(height: 10),
              text(text: "Metroplolis/Municipality", color: BLUE, size: 13),
              DropDown(
                items: minicipality,
                value: "Select minicipality",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              SizedBox(height: 10),
              text(text: "Region", color: BLUE, size: 13),
              DropDown(
                items: region,
                value: "Select region",
              ),
             Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Name",
                labelText: "Name Of Market",
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
