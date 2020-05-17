import 'package:flutter/material.dart';
import 'package:mida_project/spec/colors.dart';

class DropDown extends StatefulWidget {
  String value;
  final List<String> items;
  double width;

  DropDown({
    @required this.value,
    @required this.items,
    this.width,
  });

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: DropdownButton<String>(
        underline: Container(),
        isExpanded: true,
        value: widget.value,
        icon: Icon(
          Icons.arrow_drop_down,
          color: BLUE,
        ),
        iconSize: 24,
        style: TextStyle(color: Colors.black, fontSize: 18),
        onChanged: (String data) {
          setState(() {
            widget.value = data;
          });
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: BLUE),
            ),
          );
        }).toList(),
      ),
    );
  }
}
