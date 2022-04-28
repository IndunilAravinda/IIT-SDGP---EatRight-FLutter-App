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
          const SizedBox(height: 30),
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
          const SizedBox(height: 30),
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
          const SizedBox(height: 20),
          RaisedButton(
              textColor: Colors.white,
              onPressed: () {
                Submit();
                Navigator.pop(context);
              },
              child: Text(
                'Submit',
                style: Theme.of(context).textTheme.headline3,
              ),
              color: const Color.fromARGB(255, 75, 180, 171),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              elevation: 1,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            )
        ]),
      ),
    );
  }
}
