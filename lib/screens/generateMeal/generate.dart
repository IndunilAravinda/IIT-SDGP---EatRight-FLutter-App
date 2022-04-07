import 'package:flutter/material.dart';
import 'components/body.dart';

class GenerateScreen extends StatelessWidget {
  static String routeName = "/generate";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
      body: Body(),
    );
  }
}