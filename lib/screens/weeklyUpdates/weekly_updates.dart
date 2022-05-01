// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../loginPageResources/auth_methods.dart';

class WeeklyUpdatePage extends StatefulWidget {
  static String routeName = "/weeklyUpdate";
  @override
  _WeeklyUpdatePageState createState() => _WeeklyUpdatePageState();
}

class _WeeklyUpdatePageState extends State<WeeklyUpdatePage> {
  late TextEditingController weightController;
  late TextEditingController heightController;

  @override
  void initState() {
    super.initState();
    weightController = TextEditingController();
    heightController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    weightController.dispose();
    heightController.dispose();
  }

  Future<void> Submit() async {
    //Define function here
    String res = await AuthMethods().newValue(
      weight: int.parse(weightController.text),
      height: int.parse(heightController.text),
    );
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
          TextField(
            controller: weightController,
            decoration: const InputDecoration(
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
          TextField(
            controller: heightController,
            decoration: const InputDecoration(
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          )
        ]),
      ),
    );
  }
}
