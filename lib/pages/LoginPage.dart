import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });

      await Future.delayed(Duration(seconds: 1));

      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                  // height: 500,
                ),
                SizedBox(
                  height: 20,
                  // child: Text("hiii"),
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        autocorrect: false,
                        decoration: InputDecoration(
                            hintText: "ENTER USERNAME",
                            labelText: "USERNAME:-"),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "ENTER PASSWORD",
                            labelText: "PASSWORD:-"),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6)
                            return "password atleast contain 6 digits";
                        },
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: Colors.blue,
                        borderRadius:
                            BorderRadius.circular(changebutton ? 50 : 8),
                        child: InkWell(
                          splashColor: Colors.red,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changebutton ? 50 : 120,
                            height: 50,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.deepPurple,
                                  )
                                : Text(
                                    "login",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                            // decoration: BoxDecoration(
                            //   color: Colors.blue,
                            //   // shape: changebutton
                            //   //     ? BoxShape.circle
                            //   //     : BoxShape.rectangle,
                            // ),
                          ),
                        ),
                      )

                      // ElevatedButton(
                      //   child: Text("login"),
                      //   style: TextButton.styleFrom(maximumSize: Size(130, 50)),
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
