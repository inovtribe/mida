import 'package:flutter/material.dart';

Widget text({
  String text,
  double size = 17,
  Color color = Colors.black,
  bool bold = false,
}) {
  return Container(
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: bold ? FontWeight.bold : FontWeight.w400,
      ),
    ),
  );
}