import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mida_project/onboardingPage/checkSession.dart';
import 'package:mida_project/spec/colors.dart';
import 'package:mida_project/spec/images.dart';
import 'package:mida_project/spec/navigation.dart';
import 'package:mida_project/spec/strings.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkSession().then((status) {
      if (status) {
        //go to home page
      } else {
        //check if on boarding message if seen or not
        navigation(context: context, pageName: "onboardingPage");
      }
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: BLUE,
    ));
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              BGREEN,
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
                  CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation<Color>(BLUE),
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