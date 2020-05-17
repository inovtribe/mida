import 'package:flutter/material.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/colors.dart';

class Question1b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Background Characteristics - (2/2)",
              size: 16,
              color: WHITE,
              bold: true,
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
                hintText: "Address",
                labelText: "Address Ghana Post Code",
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
                hintText: "Address",
                labelText: "Land Mark Of The Address",
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
                hintText: "Unique Identifier Number of the Store/Stall",
                labelText:
                    "What is the Unique Identifier Number (UIN) of the Store/Stall?",
                validate: false,
                icon: null,
                controller: null,
              ),
              Container(
                color: BLUE,
                height: 1,
              ),
              SizedBox(height: 10),
              textFormField(
                hintText: "GEO ID",
                labelText: "Enter GEO ID",
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
