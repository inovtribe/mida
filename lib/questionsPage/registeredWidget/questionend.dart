import 'package:flutter/material.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/colors.dart';

class Questionend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
                text: "End of Survey",
                size: 16,
                color: WHITE,
                bold: true),
            trailing: text(text: "[7/7]", size: 16, color: WHITE, bold: true),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 55),
          padding: EdgeInsets.fromLTRB(15, 8, 15, 8),
          color: WHITE,
          child: ListView(
            children: <Widget>[
              textFormField(
                hintText: "End Time",
                labelText: "End Time",
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
