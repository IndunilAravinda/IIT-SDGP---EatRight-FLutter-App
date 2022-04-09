import 'package:eatright/screens/generateMeal/components/body.dart';
import 'package:flutter/material.dart';

class GenerateMealPage extends StatelessWidget {
  static String routeName = "/generate";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Daily Meal Plan",
        style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}