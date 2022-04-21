import 'package:eatright/screens/userProfile/components/body.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("User Profile",
        style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}