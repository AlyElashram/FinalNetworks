import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //TODO:Add initial route upon a certain condition
    routes: {'/': (context) => LoginScreen()},
    debugShowCheckedModeBanner: false,
  ));
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passswordController = TextEditingController();

  bool checkFields() {
    if (_emailController.text == '' || _passswordController.text == '') {
      print("Email or Password Field is Empty");
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3E395A),
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Text(
              "Welcome Craver",
              style: TextStyle(
                  fontFamily: 'SF_Pro_Display',
                  fontSize: 40,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 20, color: Color(0xFF463A87)),
                  contentPadding: EdgeInsets.fromLTRB(0, 22, 0, 22),
                  hintText: "Email",
                  icon: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.email_rounded,
                        color: Color(0xFF3E75B4),
                      )),
                ),
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SF_Pro_Display',
                    color: Color(0xFF463A87)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.white),
              child: TextField(
                obscureText: true,
                controller: _passswordController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 20, color: Color(0xFF463A87)),
                  contentPadding: EdgeInsets.fromLTRB(0, 22, 0, 22),
                  hintText: "Password",
                  icon: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.vpn_key_rounded,
                        color: Color(0xFF3E75B4),
                      )),
                ),
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SF_Pro_Display',
                    color: Color(0xFF463A87)),
              ),
            ),
          ),
          SizedBox(height: 160),
          Container(
              width: 140,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    if (checkFields()) {
                      //TODO:Navigate To HomeScreen,Login Using Firebase
                      print("Login Successful");
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontFamily: 'SF_Pro_Display',
                        fontSize: 20,
                        color: Color(0xFF3E75B4)),
                  ))),
          SizedBox(
            height: 140,
          ),
          Row(
            children: [
              Text(
                "Not a user?",
                style: TextStyle(
                    fontFamily: 'SF_Pro_Display',
                    fontSize: 20,
                    color: Colors.white),
              ),
              FlatButton(
                padding: EdgeInsets.all(2),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  print("Redirecting to Registeration Page");
                },
                child: Text(
                  "Register",
                  style: TextStyle(
                      fontFamily: 'SF_Pro_Display',
                      fontSize: 24,
                      color: Color(0xFF3E75B4)),
                ),
              )
            ],
          )
        ])));
  }
}
