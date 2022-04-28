// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

<<<<<<< Updated upstream
class WeeklyUpdatePage extends StatelessWidget {
  static String routeName = "/weeklyUpdate";
=======
import '../onboarding/onboarding.dart';

class HomePage extends StatelessWidget {
  TextEditingController _heightController = TextEditingController();

>>>>>>> Stashed changes
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
        child: Column(children: const [
          TextField(
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
          TextField(
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
              onPressed: () async {},
              textColor: Colors.white,
              color: Colors.teal,
              child: Text(
                'Submit',
                style: TextStyle(fontSize: 20),
              ))
        ]),
      ),
    );
  }
}
