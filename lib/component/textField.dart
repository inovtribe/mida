import 'package:flutter/material.dart';
import 'package:mida_project/spec/colors.dart';

Widget textFormField({
  @required String hintText,
  @required String labelText,
  String validateMsg,
  @required Widget icon,
  @required TextEditingController controller,
  bool validate = true,
  bool suggestion = false,
  TextInputType inputType = TextInputType.text,
  int maxLine = 1,
  bool validateEmail = false,
  double width,
  enable = true,
}) {
  return Container(
    width: width,
    child: TextFormField(
      enabled: enable,
      enableSuggestions: suggestion,
      keyboardType: inputType,
      controller: controller,
      maxLines: maxLine,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: BLUE),
        labelText: labelText,
        labelStyle: TextStyle(color: BLUE),
        icon: icon,
        border: InputBorder.none,
      ),
      validator: (value) {
        Pattern pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regex = new RegExp(pattern);
        if (value.isEmpty && validate) {
          return validateMsg;
        } else if (validateEmail && !regex.hasMatch(value)) {
          return "Please enter a valid email address";
        }
        return null;
      },
    ),
  );
}
