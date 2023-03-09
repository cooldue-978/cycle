import 'dart:math';
import 'dart:ui';

import "package:flutter/material.dart";

class Backside extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ID CARD BACKSIDE "),
        backgroundColor: Colors.blue,
      ),
      body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: EdgeInsets.symmetric(horizontal: 90.0, vertical: 210),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                width: 250,
                height: 390,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "App. No: "
                      "2022122233",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Blood Group: "
                      "O+",
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Official address:  "
                      "VIT, Vellore Campus"
                      "Tiruvalam Rd, Katpadi, Vellore,"
                      " Tamil Nadu 632014",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Address: "
                      "vellore "
                      "tamil nadu"
                      "india",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "contact: 9087654321",
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "valid upto: "
                      "JUL- 2026",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Image.asset(
                      'images/22BCE1234.png',
                      height: 50,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Website: www.vit.ac.in",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
