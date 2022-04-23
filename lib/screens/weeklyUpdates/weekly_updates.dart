import 'package:flutter/material.dart';

class WeeklyUpdatePage extends StatelessWidget {
  static String routeName = "/weeklyUpdate";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Weekly Updates",
        style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
    );
  }
}