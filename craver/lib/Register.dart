import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _conpassController = TextEditingController();

  int checkFields() {
    if (_emailController.text == '' ||
        _passController.text == '' ||
        _conpassController.text == '') {
      return 1;
    } else if (_conpassController.text == _passController.text) {
      return 0;
    } else {
      return 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF3E395A),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Center(
                        child: Text("Registeration",
                            style: TextStyle(
                                fontFamily: 'SF_Pro_Display',
                                fontSize: 40,
                                color: Colors.white)),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                              color: Colors.white),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  fontSize: 20, color: Color(0xFF463A87)),
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
                    ],
                  )),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            color: Colors.white),
                        child: TextField(
                          controller: _passController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                fontSize: 20, color: Color(0xFF463A87)),
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0)),
                            color: Colors.white),
                        child: TextField(
                          controller: _conpassController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                fontSize: 20, color: Color(0xFF463A87)),
                            contentPadding: EdgeInsets.fromLTRB(0, 22, 0, 22),
                            hintText: "Confirm Password",
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
                    SizedBox(height: 80),
                    Container(
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: FlatButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              int checkParam = checkFields();
                              if (checkParam == 0) {
                                //TODO:pop uo Dialogue for each error
                                print("Passwords match");
                              } else if (checkParam == 1) {
                                print("Please Fill in The Empty Fields");
                              } else if (checkParam == 2) {
                                print("Registration Successful");
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
            ],
          ),
        ));
  }
}
