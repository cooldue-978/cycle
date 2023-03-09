import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DETAILS"),
        backgroundColor: Color.fromARGB(255, 17, 120, 203),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final name = user["name"];
          final email = user['email'];
          final gender = user['gender'];
          final status = user['status'];
          final id = user['id'];

          return Container(
              height: 130,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 131, 196, 224)),
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Text(
                    "ID: " + id.toString(),
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Email: " + email,
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    "Gender: " + gender,
                    style: TextStyle(fontSize: 17),
                  ),
                  Text(
                    "Status: " + status,
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              )));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "REFRESH",
          style: TextStyle(fontSize: 10),
        ),
        onPressed: refresh,
      ),
      // fetchdetails,
    );
  }

  void refresh() async {
    const url = "https://gorest.co.in/public/v2/users";
    final uri = Uri.parse(url);
    final response = await http.get(uri);

    setState(() {
      users = jsonDecode(response.body);
    });
    print("refreshed done");
  }
}
