// ignore_for_file: deprecated_member_use

import 'package:eatright/screens/login_screen.dart';
import 'package:eatright/screens/signup_screen.dart';
import 'package:eatright/widgets/textstyle.dart';
import 'package:flutter/material.dart';

class WelcomePageWidget extends StatefulWidget {
  static String routeName = "/welcome";
  @override
  _WelcomePageWidgetState createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Image.asset(
                'images/welcome_page.jpg',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.cover,
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, -0.55),
              child: Text(
                'Welcome to EatRight!',
                style: WelcomeHead,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.6),
              child: SizedBox(
                width: 150,
                height: 50,
                child: RaisedButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPageWidget(),
                      ),
                    );
                  },
                  padding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  color: Color(0xFF00796B),
                  elevation: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: const Text(
                      "Log In",
                      style: wlogin,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: AlignmentDirectional(0, 0.9),
              child: SizedBox(
                width: 150,
                height: 50,
                child: RaisedButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPageWidget(),
                      ),
                    );
                  },
                  padding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  color: Colors.white,
                  elevation: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: const Text(
                      "Sign Up",
                      style: signup,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
