import 'package:eatright/signup_screen.dart';
import 'package:eatright/widgets/textstyle.dart';
import 'package:flutter/material.dart';

class LoginPageWidget extends StatefulWidget {
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
        iconTheme: IconThemeData(color: Color(0xFF212121)),
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
              alignment: AlignmentDirectional(0, -0.45),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: TextFormField(
                  controller: emailTextFieldController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email address',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF999999),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF999999),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    filled: true,
                    contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.8),
              child: Text(
                'Welcome Back!',
                style: WelcomeBack,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.2),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: TextFormField(
                  controller: passwordTextFieldController,
                  obscureText: !passwordTextFieldVisibility,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF999999),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF999999),
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    filled: true,
                    contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Text(
                'Forgot Password?',
                //style: FlutterFlowTheme.of(context).bodyText2,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.03, 0.25),
              child: SizedBox(
                width: 250,
                height: 50,
                child: RaisedButton(
                  onPressed: LogIn,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  color: Color(0xFF00796B),
                  elevation: 2,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Text(
                      "Log In",
                      style: loginButton,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.45),
              child: Text(
                'Don\'t have an account?',
                //style: FlutterFlowTheme.of(context).bodyText2,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.52),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpPageWidget(),
                    ),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: signup,
                  //style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future LogIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailTextFieldController.text.trim(),
      password: passwordTextFieldController.text.trim(),
    );
  }
}
