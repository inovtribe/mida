import 'package:flutter/material.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/colors.dart';

class Question6a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
                text: "Meter Account Information",
                size: 16,
                color: WHITE,
                bold: true),
            trailing: text(text: "[6/7]", size: 16, color: WHITE, bold: true),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 55),
          padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
          color: WHITE,
          child: ListView(
            children: <Widget>[
              textFormField(
                hintText: "Respondent Email",
                labelText: "Respondent Email",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Account No.",
                labelText: "Account No.",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Service Point Number",
                labelText: "Service Point Number",
                validate: false,
                icon: null,
                controller: null,
                enable: false,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "GeoCode",
                labelText: "GeoCode",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Store/Stall Number",
                labelText: "Store/Stall Number",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Tariff Class",
                labelText: "Tariff Class",
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
