import "package:flutter/material.dart";
import 'package:cycle/pages/drawer.dart';

import 'package:cycle/pages/route.dart';

Widget build(BuildContext context) {
  return Container();
}

class idcard extends StatelessWidget {
  int code = 100445;

  @override
  Widget build(BuildContext context) {
    return Container(

        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //       image: AssetImage('images/code.png'), fit: BoxFit.fill),
        // ),
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ID CARD"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(),
            Text(
              "CLICK BELOW TO SEE YOUR ID CARD",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 3, 27, 64),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(
              child: Text("front page "),
              style: TextButton.styleFrom(),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.frontside);
              },
            ),
            ElevatedButton(
              child: Text("back page "),
              style: TextButton.styleFrom(),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.backside);
              },
            ),
          ]),
        ),
      ),
      drawer: Menu(),
    ));
  }
}
