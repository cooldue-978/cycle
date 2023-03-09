import 'dart:ffi';

import "package:flutter/material.dart";

import 'package:cycle/pages/route.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Color.fromARGB(255, 13, 100, 146),
      // padding: EdgeInsets.zero,
      // decoration: BoxDecoration(
      //   color: Color.fromARGB(255, 203, 200, 200),
      // ),
      child: ListView(
        // padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Unknown Guy",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                accountEmail: Text("unknown.guy2022@vitstudent.ac.in"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/unknown.jpeg")),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightBlue,
                ),
              )),
          TextButton(
            child: Text(
              "HOME",
              style: TextStyle(color: Colors.black),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.HomePage);
            },
          ),
          TextButton(
            child: Text(
              "ID CARD",
              style: TextStyle(color: Colors.black),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.idcard);
            },
          ),
          TextButton(
            child: Text(
              "DETAILS",
              style: TextStyle(color: Colors.black),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.Details);
            },
          ),
          TextButton(
            child: Text(
              "ORDERS",
              style: TextStyle(color: Colors.black),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            onPressed: () => null,
          ),
          TextButton(
            child: Text(
              "WALLET",
              style: TextStyle(color: Colors.black),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            onPressed: () => null,
          ),
          TextButton(
            child: Text(
              "SETTING",
              style: TextStyle(color: Colors.black),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            onPressed: () => null,
          ),
          TextButton(
            child: Text(
              "POLICY",
              style: TextStyle(color: Colors.black),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlue,
            ),
            onPressed: () => null,
          ),
          TextButton(
            child: Text(
              "Logout",
              style: TextStyle(
                  color: Color.fromARGB(255, 147, 9, 9),
                  fontWeight: FontWeight.bold),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 7, 2, 134),
            ),
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.welcomepage);
            },
          ),
        ],
      ),
    ));
  }
}
