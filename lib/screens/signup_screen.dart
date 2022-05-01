// ignore_for_file: deprecated_member_use

import 'package:eatright/loginPageResources/auth_methods.dart';
import 'package:eatright/screens/login_screen.dart';
import 'package:eatright/screens/createprofilepage.dart';
import 'package:eatright/screens/onboarding/onboarding.dart';
import 'package:eatright/textstyle.dart';
import 'package:eatright/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SignUpPageWidget extends StatefulWidget {
  static String routeName = "/signUp";
  @override
  _SignUpPageWidgetState createState() => _SignUpPageWidgetState();
}

class _SignUpPageWidgetState extends State<SignUpPageWidget> {
  late TextEditingController textController1;
  late TextEditingController textController2;
  late TextEditingController textController3;
  late TextEditingController ageController;
  late TextEditingController weightController;
  late TextEditingController heightController;
  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final items = ['Male', 'Female'];
  late String value = "Male";
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(); // username
    textController2 = TextEditingController(); // email
    textController3 = TextEditingController(); //
    ageController = TextEditingController(); //
    weightController = TextEditingController(); //
    heightController = TextEditingController(); //
    passwordVisibility = false;
  }

// Ind : added dispose
  @override
  void dispose() {
    super.dispose();
    textController1.dispose();
    textController2.dispose();
    textController3.dispose();
    ageController.dispose();
    weightController.dispose();
    heightController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xFF212121)),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 1,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.85),
                child: Text(
                  'Get Started!',
                  style: GetStarted,
                  //style: FlutterFlowTheme.of(context).title1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.45),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: TextFormField(
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    ),
                    //style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.44, -0.25),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: TextFormField(
                    controller: textController2,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    ),
                    //style: FlutterFlowTheme.of(context).bodyText1,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.33, -0.04),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: TextFormField(
                    controller: textController3,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        child: Icon(
                          passwordVisibility
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
              Align(
                alignment: AlignmentDirectional(-0.9, 0.15),
                child: Container(
                  // height: 50,
                  width: 180,
                  padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: DropdownButton<String>(
                    hint: Text('Gender'),
                    isExpanded: true,
                    value: value,
                    items: items.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() => this.value = value!),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.84, 0.15),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(270, 0, 10, 0),
                  child: TextField(
                    controller: ageController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Age',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    ),
                    //style: FlutterFlowTheme.of(context).bodyText1,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.56, 0.4),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 200, 0),
                  child: TextField(
                    controller: heightController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Height (cm)',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      contentPadding:
                          const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    ),
                    //style: FlutterFlowTheme.of(context).bodyText1,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.08, 0.4),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(200, 0, 10, 0),
                  child: TextField(
                    controller: weightController,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Weight (kg)',
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF999999),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    ),
                    //style: FlutterFlowTheme.of(context).bodyText1,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.04, 0.62),
                child: SizedBox(
                  width: 250,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () async {
                      setState(() {
                        _isLoading = true;
                      });
                      // signup button action

                      String res = await AuthMethods().signUpUser(
                          username: textController1.text,
                          email: textController2.text,
                          password: textController3.text,
                          age: int.parse(ageController.text),
                          weight: int.parse(weightController.text),
                          height: int.parse(heightController.text),
                          gender: value);
                      print(res);

                      setState(() {
                        _isLoading = false;
                      });

                      if (res == "Success :)") {
                        showSnackBar(res, context);

                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnboardingScreen(),
                          ),
                        );
                      }
                    },
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    color: Color(0xFF00796B),
                    elevation: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: _isLoading
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            )
                          : Text(
                              "Sign Up",
                              style: signUpButton,
                            ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.03, 0.74),
                child: Text(
                  'Already have an account?',
                  //style: FlutterFlowTheme.of(context).bodyText2,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.83),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPageWidget(),
                      ),
                    );
                  },
                  child: Text(
                    'Log In',
                    style: login,
                    //style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
        ),
      );
}
