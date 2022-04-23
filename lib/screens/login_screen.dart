// ignore_for_file: deprecated_member_use

import 'package:eatright/screens/mainNavigationPage.dart';
import 'package:eatright/screens/signup_screen.dart';
import 'package:eatright/textstyle.dart';
import 'package:flutter/material.dart';

class LoginPageWidget extends StatefulWidget {
  static String routeName = "/logIn";
  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late TextEditingController emailTextFieldController;
  late TextEditingController passwordTextFieldController;
  late bool passwordTextFieldVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextFieldController = TextEditingController();
    passwordTextFieldController = TextEditingController();
    passwordTextFieldVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF212121)),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 1,
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0, -0.45),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: TextFormField(
                  controller: emailTextFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF999999),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF999999),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, -0.8),
              child: Text(
                'Welcome Back!',
                style: WelcomeBack,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: TextFormField(
                  controller: passwordTextFieldController,
                  obscureText: !passwordTextFieldVisibility,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF999999),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF999999),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    contentPadding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordTextFieldVisibility =
                            !passwordTextFieldVisibility,
                      ),
                      child: Icon(
                        passwordTextFieldVisibility
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  //style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, 0.1),
              child: Text(
                'Forgot Password?',
                //style: FlutterFlowTheme.of(context).bodyText2,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.03, 0.3),
              child: SizedBox(
                width: 250,
                height: 50,
                child: RaisedButton(
                  onPressed: () async {await 
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const BottomNavigation(),
                    ),);
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
                      style: loginButton,
                    ),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(0, 0.46),
              child: Text(
                'Don\'t have an account?',
                //style: FlutterFlowTheme.of(context).bodyText2,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0.56),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPageWidget(),
                    ),
                  );
                },
                child: const Text(
                  'Sign Up',
                  style: signuptxt,
                  //style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future LogIn() async {}
}
