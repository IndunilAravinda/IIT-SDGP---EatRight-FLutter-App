import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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