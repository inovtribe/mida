import 'package:flutter/material.dart';
import 'package:mida_project/component/passwordField.dart';
import 'package:mida_project/component/textField.dart';
import 'package:mida_project/spec/colors.dart';
import 'package:mida_project/spec/images.dart';
import 'package:mida_project/spec/navigation.dart';
import 'package:mida_project/spec/strings.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _passwordKey = GlobalKey<FormFieldState<String>>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              child: Container(
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 40),
                        Image.asset(
                          LOGO,
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(height: 30),
                        Text(
                          "Login",
                          style: TextStyle(
                            color: BLUE,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        _loginForm(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            textFormField(
              hintText: "Enter email address",
              labelText: "Email",
              validateMsg: "Please enter your email address",
              icon: Icon(
                Icons.mail,
                color: BLUE,
              ),
              controller: null,
            ),
            Divider(
              color: BLUE,
              thickness: 1,
            ),
            SizedBox(height: 2),
            PasswordField(
              fieldKey: _passwordKey,
              hintText: "Enter Password",
              labelText: "Password",
              validator: (input) {
                if (input.isEmpty) {
                  return "Please enter your password";
                }
                return null;
              },
            ),
            Divider(
              color: BLUE,
              thickness: 1,
            ),
            SizedBox(height: 40),
            RaisedButton(
              onPressed: () {
                navigation(context: context, pageName: "homepage");
              },
              color: BLUE,
              padding: EdgeInsets.fromLTRB(120, 10, 120, 10),
              child: Text(
                "Login",
                style: TextStyle(
                    color: WHITE, fontWeight: FontWeight.w500, fontSize: 16),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
