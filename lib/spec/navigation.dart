import 'package:flutter/material.dart';
import 'package:mida_project/homepage/dashboard.dart';
import 'package:mida_project/login/login.dart';
import 'package:mida_project/onboardingPage/onboardingPage.dart';
import 'package:mida_project/questionsPage/newServiceQuestionPage.dart';
import 'package:mida_project/questionsPage/nonRegisteredQuestionPage.dart';
import 'package:mida_project/questionsPage/registeredQuestionPage.dart';

void navigation({
  @required BuildContext context,
  @required String pageName,
  String title,
}) {
  switch (pageName.toLowerCase()) {
    case "back":
      Navigator.of(context).pop();
      break;
    case "onboardingpage":
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => OnboardingPage()),
          (Route<dynamic> route) => false);
      break;
    case "loginpage":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LoginPage()));
      break;
    case "homepage":
     Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => Homepage()),
          (Route<dynamic> route) => false);
      break;
      case "registeredquestionpage":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => RegisteredQuestionPage(title: title)));
      break;
      case "nonregisteredquestionpage":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => NonRegisteredQuestion(title: title)));
      break;
      case "newservicequestionpage":
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => NewServiceQuestionPage(title: title)));
      break;
    default:
  }
}
