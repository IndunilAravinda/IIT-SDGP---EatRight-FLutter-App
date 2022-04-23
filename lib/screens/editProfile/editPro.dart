import 'package:flutter/material.dart';

import 'components/body.dart';

class EditProfileScreen extends StatelessWidget {
  static String routeName = "/editProfile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text("Edit Profile",
        style: Theme.of(context).textTheme.headline2,
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}