import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:cycle/pages/route.dart';
import "package:flutter/src/widgets/form.dart";

class signup extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  ifsuccess(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      Text("Thanks for Creating Account\n Now you can Sign In");
      Navigator.pushNamed(context, MyRoutes.welcomepage);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("VIT"),
          backgroundColor: Colors.blue,
        ),
        body: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("images/logo.png", fit: BoxFit.cover),
                SizedBox(height: 25.0),
                Text(
                  "Hi VITian",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35,
                      height: 1.5,
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                // Text(
                //   "Plaese Create your Account to continue",
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //       fontSize: 25,
                //       height: 1.5,
                //       color: Colors.black,
                //       fontStyle: FontStyle.normal,
                //       fontWeight: FontWeight.bold),
                // ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Plaese Create your Account to continue",
                  style: TextStyle(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 31.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Name",
                          labelText: "Name",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name cannot be empty";
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Email",
                          labelText: "Email",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email cannot be empty";
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Phone Number",
                          labelText: "Phone Number",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Phone Number cannot be empty";
                          } else if (value.length < 10) {
                            return "Phone Number length should be atleast 10";
                          }
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
                          }
                        },
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                          child: Text("Sign Up"),
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
