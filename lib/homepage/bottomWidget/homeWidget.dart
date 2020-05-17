import 'package:flutter/material.dart';
import 'package:mida_project/component/text.dart';
import 'package:mida_project/spec/colors.dart';
import 'package:mida_project/spec/images.dart';
import 'package:mida_project/spec/navigation.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BACKGROUND,
      padding: EdgeInsets.fromLTRB(10, 15, 10, 10),
      child: ListView(
        children: <Widget>[
          text(
            text: "Welcome back !!",
            size: 16,
            bold: true,
            color: BLUE,
          ),
          text(
            text: "Name: ",
            size: 18,
            bold: true,
            color: BLUE,
          ),
          text(
            text: "Company: ",
            size: 18,
            bold: true,
            color: BLUE,
          ),
          SizedBox(height: 40),
          counterContainer(context),
          SizedBox(height: 60),
          InkWell(
            onTap: () {
              setState(() {
                selected ? selected = false : selected = true;
              });
            },
            child: companyContainer(
              title: "Conduct a survey",
              selected: selected,
              context: context,
              function1: () {
                navigation(context: context, pageName: "registeredquestionpage", title: "Registered Customers");
              },
              function2: () {
                navigation(context: context, pageName: "nonregisteredquestionpage", title: "Non-Registered Customers");
              },
              function3: () {
                navigation(context: context, pageName: "newservicequestionpage", title: "New Service Connection");
              }
            ),
          ),
        ],
      ),
    );
  }

  Widget companyContainer({
    @required String title,
    void Function() function1,
    void Function() function2,
    void Function() function3,
    bool selected = false,
    @required BuildContext context,
  }) {
    return Column(
      children: <Widget>[
        Container(
          height: 70,
          padding: EdgeInsets.fromLTRB(40, 0, 20, 10),
          color: BLUE,
          child: Row(
            children: <Widget>[
              Align(
                alignment: const Alignment(-1.0, -1.0),
                child: SizedBox(
                  width: 10.0,
                  height: 20.0,
                  child: OverflowBox(
                    minWidth: 0.0,
                    maxWidth: 60.0,
                    minHeight: 0.0,
                    maxHeight: 60.0,
                    child: ClipOval(
                      child: Container(
                        color: WHITE,
                        width: 70,
                        height: 70,
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Image.asset(SURVEY),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6,
                margin: EdgeInsets.only(left: 50),
                padding: EdgeInsets.only(top: 15, bottom: 5),
                child: ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: text(
                    text: "$title",
                    color: WHITE,
                    bold: true,
                    size: 22,
                  ),
                  trailing: Icon(
                    selected ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: WHITE,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        Visibility(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: WHITE,
              border: Border.all(color: BLUE),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: function1,
                  child: ListTile(
                    title: text(
                        text: "Registered Customers", bold: true, color: BLUE),
                  ),
                ),
                Divider(color: BLUE),
                InkWell(
                  onTap: function2,
                  child: ListTile(
                    title: text(
                        text: "Non-Registered Customers",
                        bold: true,
                        color: BLUE),
                  ),
                ),
                Divider(color: BLUE),
                InkWell(
                  onTap: function3,
                  child: ListTile(
                    title: text(
                        text: "New Service Connection",
                        bold: true,
                        color: BLUE),
                  ),
                ),
              ],
            ),
          ),
          visible: selected,
        ),
      ],
    );
  }

  Widget counterContainer(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(40, 0, 20, 10),
      color: BLUE,
      child: Row(
        children: <Widget>[
          Align(
            alignment: const Alignment(-1.0, -1.0),
            child: SizedBox(
              width: 10.0,
              height: 20.0,
              child: OverflowBox(
                minWidth: 0.0,
                maxWidth: 60.0,
                minHeight: 0.0,
                maxHeight: 60.0,
                child: Container(
                  color: WHITE,
                  padding: EdgeInsets.all(5),
                  child: Image.asset(COMPLETE),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            margin: EdgeInsets.only(left: 50),
            padding: EdgeInsets.only(top: 15, bottom: 5),
            child: Column(
              children: <Widget>[
                text(
                  text: "Total completed survey",
                  color: WHITE,
                  bold: true,
                ),
                SizedBox(height: 5),
                text(text: "50", color: WHITE, bold: true, size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
