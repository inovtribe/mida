import 'package:flutter/material.dart';
import 'package:mida_project/spec/colors.dart';
import 'package:mida_project/spec/images.dart';
import 'package:mida_project/spec/navigation.dart';
import 'package:mida_project/spec/strings.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              BBLUE,
              repeat: ImageRepeat.repeat,
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(LOGO, width: 120, height: 120,),
                  SizedBox(height: 20),
                  Text(
                    TITLE,
                    style: TextStyle(
                      color: BLUE,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(
              onPressed: () {
                navigation(context: context, pageName: "loginPage");
              },
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              color: BLUE,
              padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}