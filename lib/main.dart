import 'package:flutter/material.dart';
import 'package:mida_project/onboardingPage/SplashScreen.dart';
import 'package:mida_project/spec/colors.dart';
import 'package:mida_project/spec/strings.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: BLUE,
      ),
      title: TITLE,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}