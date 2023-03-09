import "package:flutter/material.dart";
import 'package:cycle/pages/backside.dart';
import 'package:cycle/pages/details.dart';
import 'package:cycle/pages/frontside.dart';
import 'package:cycle/pages/home_page.dart';
import 'package:cycle/pages/id_card.dart';
import 'package:cycle/pages/login_page.dart';
import 'package:cycle/pages/route.dart';
import 'package:cycle/pages/signup.dart';
import 'package:cycle/pages/welocome_page.dart';

void main() {
  runApp(VIT());
}

class VIT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => welcomepage(),
        MyRoutes.HomePage: (context) => HomePage(),
        MyRoutes.frontside: (context) => FrontSide(),
        MyRoutes.backside: (context) => Backside(),
        MyRoutes.logout: (context) => loginpage(),
        MyRoutes.idcard: (context) => idcard(),
        MyRoutes.welcomepage: (context) => welcomepage(),
        MyRoutes.loginpage: (context) => loginpage(),
        MyRoutes.signup: (context) => signup(),
        MyRoutes.Details: (context) => details(),
      },
    );
  }
}
