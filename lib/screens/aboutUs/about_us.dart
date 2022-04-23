import 'package:eatright/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AboutPageWidget extends StatefulWidget {
  static String routeName = "/aboutUsPage";
  @override
  _AboutPageWidgetState createState() => _AboutPageWidgetState();
}

class _AboutPageWidgetState extends State<AboutPageWidget> {
  PageController pageViewController = PageController(initialPage: 0);
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        //backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'About Page',
          style: aboutpage,
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      //backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 500,
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 60),
                        child: PageView(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          scrollDirection: Axis.vertical,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.9, -1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 90, 0, 0),
                                    child: Text('About EatRight',
                                        style: aboutEatRight),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.9, -0.45),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                        '‘EatRight’ is a meal planning application that will go beyond the current boundaries of personalization by predicting PAL (Physical Activity Level) without the help of any external tool at the same time taking very little personal information from its users. ‘EatRight’  will make sure that you can maintain a healthy balanced diet plan while constantly adjusting to your personal needs.',
                                        style: aboutEatRighttext),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.9, 0.05),
                                  child: Text('Our Team', style: ourteam),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.1, 1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 380, 0, 0),
                                    child: Image.asset(
                                      'assets/images/Grouppic.jpeg',
                                      width: 350,
                                      height: 350,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.9, -0.7),
                                  child: Text('IIT Module', style: IITmodole),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.75, -0.15),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'Software development group project, In this module students gain practical work experience through their participation in a team that develops a prototype for a real-life software application suggested by industry contacts. The module takes the students through the different managerial and technical steps of software development. Students gain experience in managing a team and deliver software iteratively by using an agile approach and receiving feedback from industry contacts. The module also provides students with experience in team communication and ways to overcome any problems, as well as the opportunity to reflect on professional issues such as quality of project documentation, cybersecurity, ethics and code of conduct.',
                                      //style: FlutterFlowTheme.of(context).bodyText1,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0.6),
                                  child: Text('Credits', style: Credits),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.65, 1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 300, 0, 0),
                                    child: Text(
                                        'First and foremost, we would like to express our heartfelt gratitude to the academic staff and the\nmanagement of Informatics Institute of Technology who has provided us with this opportunity to\nengage in our own research project that’ll help polish our skills in the field of computer science.',
                                        style: Credittext),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.1, 1),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 90, 0, 0),
                                child: Text(
                                    'Secondly, we would like to thank the module team for constantly providing us with their\nguidance and feedback. From teaching us the basics of conducting a research project to holding\nwebinars with field professionals to give us the necessary encouragement and knowledge to\nconduct a successful research project.\n\nWe would also like to thank our mentor, Mr. Torin Wirasingha, for constantly encouraging us\nand pushing us beyond our expectations with advice and guidance. We are grateful for his words\nof wisdom whenever we were stuck at crossroads and challenges.\n\nSpecial thanks to Usman Malik for providing the database and allowing us to utilize it.\n\nThanks to the professionals that agreed to the interviews, guiding us and giving us their\nvaluable time. The feedback provided by them was invaluable to our project and helped shape it\ninto what it is today. We also appreciate everyone that participated in our surveys that were\nconducted who provided their feedback and ideas.\n\nFinally, we would like to thank all of our family members and friends for the support and\nencouragement they have given us since the beginning of the project and until the very end.',
                                    style: Secondtext),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.9, -0.95),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                          child: SmoothPageIndicator(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            count: 3,
                            axisDirection: Axis.vertical,
                            onDotClicked: (i) {
                              pageViewController.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 2,
                              spacing: 5,
                              radius: 16,
                              dotWidth: 14,
                              dotHeight: 14,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor: Color(0xFF00796B),
                              paintStyle: PaintingStyle.fill,
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
      ),
    );
  }
}
