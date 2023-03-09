import "package:flutter/material.dart";
import 'package:cycle/pages/drawer.dart';
import 'package:cycle/pages/homeupcoming.dart';
import 'package:cycle/pages/route.dart';

Widget build(BuildContext context) {
  return Container();
}

class HomePage extends StatelessWidget {
  int code = 100445;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(

            // image: DecorationImage(
            //     image: AssetImage('images/code.png'), fit: BoxFit.fill),
            ),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("CYCLE"),
            backgroundColor: Colors.blue,
          ),
          floatingActionButton: FloatingActionButton(
            child: Text("chats"),
            onPressed: () => {Navigator.pushNamed(context, MyRoutes.HomePage)},
          ),
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 20,
            selectedFontSize: 15,
            selectedIconTheme:
                IconThemeData(color: Colors.amberAccent, size: 30),
            selectedItemColor: Colors.amberAccent,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            backgroundColor: Colors.blue,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.verified_user),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black54,
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
          ),
          body: Form(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Align(
                  alignment: Alignment.center,
                ),
                Text(
                  "How's your day",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                ElevatedButton(
                  child: Text("nice"),
                  onPressed: () => Text("hello"),
                ),
                ElevatedButton(
                  child: Text("nice"),
                  onPressed: () {
                    Text("eee");
                  },
                )
              ],
            ),
          ),
          drawer: Menu(),
        ));
  }
}
