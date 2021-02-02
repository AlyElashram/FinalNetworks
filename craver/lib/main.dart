import 'dart:ui';

import 'package:craver/Register.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //TODO:Add initial route upon a certain condition
    routes: {
      '/': (context) => LoginScreen(),
      'Register': (context) => Register()
    },
    debugShowCheckedModeBanner: false,
  ));
}

class LoginScreen extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool checkFields() {
      if (_emailController.text == '' || _passwordController.text == '') {
        //TODO: pop up Dialogue for message
        print("Email or Password Field is Empty");
        return false;
      }
      return true;
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF3E395A),
        body: SafeArea(
            child: Column(children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
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
                        hintStyle:
                            TextStyle(fontSize: 20, color: Color(0xFF463A87)),
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
                      controller: _passwordController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle:
                            TextStyle(fontSize: 20, color: Color(0xFF463A87)),
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
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Spacer(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Text(
                        "Not a user?",
                        style: TextStyle(
                            fontFamily: 'SF_Pro_Display',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    FlatButton(
                      padding: EdgeInsets.zero,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        Navigator.pushNamed(context, 'Register');
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
                ),
              ],
            ),
          )
        ])));
  }
}
