import 'package:flutter/material.dart';
import 'package:mida_project/spec/colors.dart';

Widget ball({bool selected = false}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipOval(
      child: AnimatedContainer(
        color: selected ? BLUE : GREEN,
        width: 7,
        height: 7,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      ),
    ),
  );
}