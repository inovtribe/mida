import 'package:flutter/material.dart';
import 'package:mida_project/component/dropDown.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/arrays.dart';
import 'package:mida_project/spec/colors.dart';

Gender _gender;

class Question2d extends StatefulWidget {
  @override
  _Question2dState createState() => _Question2dState();
}

class _Question2dState extends State<Question2d> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: BLUE,
          child: ListTile(
            title: text(
              text: "Personal Information – Operator (Shop Operator) - (1/3)",
              size: 16,
              color: WHITE,
              bold: true,
            ),
            trailing: text(text: "[2/7]", size: 16, color: WHITE, bold: true),
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
                labelText: "Name",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              text(text: "Title", color: BLUE, size: 13),
              DropDown(
                items: title,
                value: "Select title",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              SizedBox(height: 10),
              text(text: "Form Of Identification", color: BLUE, size: 13),
              DropDown(
                items: identification,
                value: "Select identification",
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Identification Number",
                labelText: "Identification Number",
                validate: false,
                icon: null,
                controller: null,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              SizedBox(height: 10),
              text(text: "Gender", color: BLUE, size: 13),
              genderRadioBution(),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Phone number",
                labelText: "Phone number",
                validate: false,
                icon: null,
                controller: null,
                inputType: TextInputType.phone,
              ),
              Divider(
                color: BLUE,
                thickness: 1,
              ),
              textFormField(
                hintText: "Email",
                labelText: "Email Address",
                validate: true,
                icon: null,
                controller: null,
                maxLine: null,
                validateEmail: true,
                validateMsg: "Enter email address",
                inputType: TextInputType.emailAddress,
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

  Widget genderRadioBution() {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: ListTile(
            title: const Text('Male', style: TextStyle(color: BLUE)),
            leading: Radio(
              activeColor: BLUE,
              value: Gender.Male,
              groupValue: _gender,
              onChanged: (Gender value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          child: ListTile(
            title: const Text('Female', style: TextStyle(color: BLUE)),
            leading: Radio(
              activeColor: BLUE,
              value: Gender.Female,
              groupValue: _gender,
              onChanged: (Gender value) {
                setState(() {
                  _gender = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
