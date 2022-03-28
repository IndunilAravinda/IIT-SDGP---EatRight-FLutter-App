import 'package:flutter/material.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text("My Profile",
        style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
