import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:eatright/screens/checkbox.dart';
import 'package:eatright/widgets/textstyle.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AllergiesAndCuisinesPageWidget extends StatefulWidget {
  @override
  _AllergiesAndCuisinesPageWidgetState createState() =>
      _AllergiesAndCuisinesPageWidgetState();
}

class _AllergiesAndCuisinesPageWidgetState
    extends State<AllergiesAndCuisinesPageWidget> {
  late List<String> checkboxGroupValues;
  PageController pageViewController = PageController(initialPage: 0);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 1,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 50),
                            child: PageView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Stack(
                                  children: [
                                    const Align(
                                      alignment: AlignmentDirectional(0, -0.65),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 0, 30, 0),
                                        child: const Text(
                                          'Are you allergic to any of the following?',
                                          style: Checkbox1,
                                        ),
                                      ),
                                    ),
                                    Align(
                                        alignment:
                                            AlignmentDirectional(0, 0.25),
                                        child: DynamicallyCheckbox()),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0.95),
                                      child: Text(
                                        'Swipe down to continue',
                                        //style: FlutterFlowTheme.of(context).bodyText2,
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Align(
                                      alignment: const AlignmentDirectional(
                                          -0.8, 0.65),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10, 0, 10, 0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF5DBBB3),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.85, 1),
                                                  child: MyStatefulWidget(),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 0, 0),
                                                  child: Text(
                                                    'Whole30',
                                                    textAlign: TextAlign.start,
                                                    style: whole30,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(
                                          -0.8, 0.05),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10, 0, 10, 0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF93D2CD),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.85, 1),
                                                  child: MyStatefulWidget(),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 0, 0),
                                                  child: Text(
                                                    'Vegan',
                                                    textAlign: TextAlign.start,
                                                    style: vegan,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(
                                          -0.8, -0.35),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10, 0, 10, 0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFA1D2CE),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.85, 1),
                                                  child: MyStatefulWidget(),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 0, 0),
                                                  child: const Text(
                                                    'Gluten free',
                                                    textAlign: TextAlign.start,
                                                    style: glutenfree,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: AlignmentDirectional(0, -0.65),
                                      child: const Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 0, 30, 0),
                                        child: Text(
                                          'Select your favourite meal plans',
                                          style: Checkbox2,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(
                                          -0.85, -0.15),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10, 0, 10, 0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFA5D9D5),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.85, 1),
                                                  child: MyStatefulWidget(),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 0, 0),
                                                  child: const Text(
                                                    'Ketogenic',
                                                    textAlign: TextAlign.start,
                                                    style: ketogenic,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(
                                          -0.8, 0.25),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10, 0, 10, 0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF81CAC4),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.85, 1),
                                                  child: MyStatefulWidget(),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 0, 0),
                                                  child: Text(
                                                    'Paleo',
                                                    textAlign: TextAlign.start,
                                                    style: paleo,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(
                                          -0.8, 0.45),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10, 0, 10, 0),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFF6FC3BC),
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.85, 1),
                                                  child: MyStatefulWidget(),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20, 20, 0, 0),
                                                  child: Text(
                                                    'Low FODMAP',
                                                    textAlign: TextAlign.start,
                                                    style: lowfodmap,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0, 0.9),
                                      child: SizedBox(
                                        width: 150,
                                        height: 50,
                                        child: RaisedButton(
                                          onPressed: () {},
                                          padding: EdgeInsets.zero,
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: const BorderRadius
                                                      .all(
                                                  const Radius.circular(25))),
                                          color: Colors.black,
                                          elevation: 2,
                                          child: Container(
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(25))),
                                            child: const Text(
                                              "Done",
                                              style: done,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.8, -0.9),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: Container(
                                child: SmoothPageIndicator(
                                  controller: pageViewController =
                                      PageController(initialPage: 0),
                                  count: 2,
                                  axisDirection: Axis.vertical,
                                  onDotClicked: (i) {
                                    pageViewController.animateToPage(
                                      i,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect: const ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 16,
                                    dotHeight: 16,
                                    dotColor: const Color(0xFF9E9E9E),
                                    activeDotColor: const Color(0xFF009688),
                                    paintStyle: PaintingStyle.fill,
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
            ],
          ),
        ),
      ),
    );
  }
}

class DynamicallyCheckbox extends StatefulWidget {
  @override
  DynamicallyCheckboxState createState() => new DynamicallyCheckboxState();
}

class DynamicallyCheckboxState extends State {
  var holder_1 = [];

  get itemPadding => EdgeInsetsDirectional.fromSTEB(50, 0, 30, 0);

  getItems() {
    List.forEach((key, value) {
      if (value == true) {
        holder_1.add(value);
      }
    });

    // Printing all selected items on Terminal screen.
    print(holder_1);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    holder_1.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 650,
        padding: EdgeInsetsDirectional.fromSTEB(10, 180, 30, 60),
        alignment: Alignment.center,

        //margin:  EdgeInsetsDirectional.fromSTEB(50, 0, 30, 0),
        //padding: EdgeInsetsDirectional.fromSTEB(50, 0, 30, 0),
        child: Expanded(
          child: ListView(
            children: List.keys.map((String value) {
              return CheckboxListTile(
                title: new Text(value),
                controlAffinity: ListTileControlAffinity.leading,
                value: List[value],
                checkColor: const Color(0xFF0EAC9F),
                activeColor: const Color(0xFF76D0CE),
                onChanged: (key) {
                  setState(() {
                    List[value] = key!;
                  });
                },
              );
            }).toList(),
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            //margin:  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
          ),
        ),
      ),
    ]);
  }

  Map<String, bool> List = {
    'Dairy': false,
    'Egg': false,
    'Gluten': false,
    'Grain': false,
    'Peanut': false,
    'Seafood': false,
    'Wheat': false,
  };
}
