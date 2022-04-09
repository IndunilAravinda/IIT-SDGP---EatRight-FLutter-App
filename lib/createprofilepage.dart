import 'package:flutter/material.dart';
import 'package:eatright/AllergiesAndCuisines.dart';
import 'package:eatright/widgets/textstyle.dart';

class CreateProfilePageWidget extends StatefulWidget {
  @override
  _CreateProfilePageWidgetState createState() =>
      _CreateProfilePageWidgetState();
}

class _CreateProfilePageWidgetState extends State<CreateProfilePageWidget> {
  late TextEditingController textController1;
  late TextEditingController textController2;
  late TextEditingController textController3;
  late TextEditingController textController4;
  late TextEditingController textController5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, -2.78),
              child: Image.asset(
                'assets/images/eiliv-sonas-aceron-ZuIDLSz3XLg-unsplash.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, -0.9),
                      child: Text(
                        'Complete Profile',
                        //style: FlutterFlowTheme.of(context).title1,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.75),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Profile-Pic-Icon.png',
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.4),
                      child: Text(
                        'Update Profile Avatar',
                        style: updateProfileAvatar,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.2),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: TextFormField(
                          controller: textController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Your Name',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                          ),
                          style: bodytext,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.05),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: TextFormField(
                          controller: textController2,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Your Age',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                          ),
                          //style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.3),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: TextFormField(
                          controller: textController3,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Your Gender',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                          ),
                          //style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.55),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 200, 0),
                        child: TextFormField(
                          controller: textController4,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Weight (kg)',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                          ),
                          //style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.55),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(200, 0, 10, 0),
                        child: TextFormField(
                          controller: textController5,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Height (cm)',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF999999),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            filled: true,
                            contentPadding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                          ),
                          //style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0.8),
                      child: SizedBox(
                        width: 160,
                        height: 50,
                        child: RaisedButton(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    AllergiesAndCuisinesPageWidget(),
                              ),
                            );
                          },
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          color: Color(0xFF009688),
                          elevation: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Text(
                              "Continue",
                              style: Continue,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
