// ignore_for_file: deprecated_member_use

import 'package:eatright/loginPageResources/auth_methods.dart';
import 'package:eatright/screens/userProfile/components/body.dart';
import 'package:eatright/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      body: Column( 
        children: [
          Body(),
          /*FirebaseAuth.instance.currentUser!.uid == 
            widget.uid?*/
          const SizedBox(height:50),
          RaisedButton( 
             child: Text(
              'Log Out',
              style: Theme.of(context).textTheme.headline3,
            ),
            onPressed: () async {
              await AuthMethods().logOut();
              Navigator.of(context)
                  .pushReplacement(
                MaterialPageRoute(
                  builder: (context) => WelcomePageWidget(),
                ),
              );
            },
            color: const Color.fromARGB(255, 75, 180, 171),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          )
        ]
      )
    );
  }
}