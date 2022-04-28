// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class WeeklyUpdatePage extends StatelessWidget {
  static String routeName = "/weeklyUpdate";

  void Submit() {
    //Define function here
    print("Submitted");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Weekly Updates",
          style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const TextField(
            decoration: InputDecoration(
                hintText: "Enter your Updated Weight",
                labelText: "Weight",
                labelStyle: TextStyle(fontSize: 30, color: Colors.black),
                border: OutlineInputBorder(),
                fillColor: Colors.black12,
                filled: true),
            keyboardType: TextInputType.number,
            obscureText: false,
          ),
          const TextField(
            decoration: InputDecoration(
                hintText: "Enter your Updated Height",
                labelText: "Height",
                labelStyle: TextStyle(fontSize: 30, color: Colors.black),
                border: OutlineInputBorder(),
                fillColor: Colors.black12,
                filled: true),
            keyboardType: TextInputType.number,
            obscureText: false,
          ),
          RaisedButton(
              textColor: Colors.white,
              color: Colors.teal,
              //Submit function goes here
              onPressed: () {
                Submit();
                Navigator.pop(context);
              },
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 20),
              ))
        ]),
      ),
    );
  }
}
