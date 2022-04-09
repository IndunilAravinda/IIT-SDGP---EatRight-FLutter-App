import 'package:flutter/material.dart';

class GenerateMealPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Progress",
        style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}