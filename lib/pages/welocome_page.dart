
import "package:flutter/material.dart";
import 'package:cycle/pages/drawer.dart';
import 'package:cycle/pages/login_page.dart';

import 'package:cycle/pages/route.dart';

Widget build(BuildContext context) {
  return Container();
}

class welcomepage extends StatelessWidget {
  int code = 100445;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("CYCLE"),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                Image.asset(
                  "images/logo.png",
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
                SizedBox(
                  height: 270,
                ),
                Text("Hello VITian",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                    textAlign: TextAlign.left),
                SizedBox(
                  width: 50,
                  height: 30,
                ),
                Text(
                  "Want to take a cycle ride ?? \n Don't worry We are here to help you...",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontStyle: FontStyle.italic),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 50,
                  height: 30,
                ),
                ElevatedButton(
                    child: Text("SIGN IN"),
                    style: TextButton.styleFrom(
                      fixedSize: Size(150, 40),
                      backgroundColor: Colors.yellow,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.loginpage);
                    }),
                SizedBox(
                  width: 50,
                  height: 10,
                ),
                ElevatedButton(
                    child: Text("SIGN UP"),
                    style: TextButton.styleFrom(
                      fixedSize: Size(150, 40),
                      backgroundColor: Colors.yellow,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.signup);
                    }),
              ]),
            ),
          ),
        ));
  }
}
