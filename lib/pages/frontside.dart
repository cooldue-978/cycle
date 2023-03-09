import 'dart:ui';

import "package:flutter/material.dart";

class FrontSide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ID CARD FRONT SIDE"),
        backgroundColor: Colors.blue,
      ),
      body: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        margin: EdgeInsets.symmetric(horizontal: 95.0, vertical: 210),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 250,
                height: 390,
                child: Column(
                  children: [
                    Image.asset(
                      'images/logo.png',
                      width: 200,
                      height: 100.0,
                    ),
                    Text(
                      "VELLORE CAMPUS",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 15.0),
                    Image.asset('images/unknown.jpeg',
                        width: 150, height: 120.0),
                    SizedBox(height: 25.0),
                    Text(
                      "Unknown Guy",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
                    ),
                    Text(
                      "22BCE1234",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      width: 500,
                      height: 20,
                      child: Text(
                        "HOSTELLER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            backgroundColor: Colors.blue,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
