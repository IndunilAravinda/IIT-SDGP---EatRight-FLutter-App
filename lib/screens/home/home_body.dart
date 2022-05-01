import 'package:eatright/screens/generateMeal/generate.dart';
import 'package:eatright/screens/progress/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../aboutUs/about_us.dart';
import '../editProfile/editPro.dart';

class homeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xff009688),
              image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage('assets/images/launcher_icon.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(232, 255, 255, 255),
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: Text("Hello amigo,",
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff009688),
                                  fontSize: 25,
                                )),
                  ),
                  SizedBox(
                    height: 200,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        HomeCard(
                          svgSrc: "assets/icons/mealplate.svg",
                          title: "My Diet Plan\n",
                          clickPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GenerateMealPage()),
                            );
                          },
                        ),
                        HomeCard(
                          svgSrc: "assets/icons/Progress-Chart-Loss.svg",
                          title: "My Progress\n",
                          clickPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProgressPage()),
                            );
                          },
                        ),
                        HomeCard(
                          svgSrc: "assets/icons/pawn.svg",
                          title: "Profile\n",
                          clickPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfileScreen()),
                            );
                          },
                        ),
                        HomeCard(
                          svgSrc: "assets/icons/eatright.svg",
                          title: "About Developers\n",
                          clickPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutPageWidget()));
                          },
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final VoidCallback clickPress;
  const HomeCard({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.clickPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(232, 255, 255, 255),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 17,
                spreadRadius: -13,
                color: Color.fromARGB(255, 179, 179, 179),
              )
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: clickPress,
            child: Column(children: <Widget>[
              Spacer(),
              SvgPicture.asset(
                svgSrc,
                height: 50,
              ),
              Spacer(),
              Text(
                title,
                textAlign: TextAlign.center,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
