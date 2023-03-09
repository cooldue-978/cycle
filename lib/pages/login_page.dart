import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:cycle/pages/route.dart';
import "package:flutter/src/widgets/form.dart";

class loginpage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  ifsuccess(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.HomePage);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CYCLE"),
          backgroundColor: Colors.blue,
        ),
        body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("images/logo.png", fit: BoxFit.cover),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Welcome VITian",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      height: 1.5,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 15,
                ),
                Text("ENTER YOUR USERNAME AND PASSWORD TO CONTINUE"),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 31.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          } else if (value.length < 6) {
                            return "Username length should be atleast 6";
                          } else if (value != "123456") {
                            return "invalid username try again";
                          }
                          ;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          } else if (value != "123456") {
                            return "invalid password try again";
                          }
                          ;
                        },
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                          child: Text("Login"),
                          style: TextButton.styleFrom(
                            fixedSize: Size(150, 40),
                            backgroundColor: Colors.yellow,
                          ),
                          onPressed: () => ifsuccess(context))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
