import 'package:eatright/screens/createprofilepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:eatright/screens/onboarding/components/onboarding_info.dart';
import 'package:eatright/screens/onboarding/components/start_button.dart';

import '../../../size_config.dart';
import 'nav_button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Theme.of(context).primaryColor
            : Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // initialize size config
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 9,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingContents.length,
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(
                    height: sizeV * 5,
                  ),
                  Text(onboardingContents[index].title,
                      style: Theme.of(context).textTheme.headline1),
                  SizedBox(
                    height: sizeV * 5,
                  ),
                  Container(
                    height: sizeV * 50,
                    child: Image.asset(
                      onboardingContents[index].image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: sizeV * 5,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: Theme.of(context).textTheme.bodyText2,
                      children: [
                        TextSpan(text: 'We will be '),
                        TextSpan(
                            text: 'your first step ',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            )),
                        TextSpan(text: 'to be a better '),
                        TextSpan(text: 'version of '),
                        TextSpan(
                          text: 'yourself ',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sizeV * 5,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                currentPage == onboardingContents.length - 1
                    ? MyTextButton(
                        buttonName: 'Get Started',
                        onPressed: () async {
                          await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateProfilePageWidget(),
                          ),
                        );
                        },
                        bgColor: Theme.of(context).primaryColor,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          OnBoardNavBtn(
                            name: 'Skip',
                            onPressed: () {},
                          ),
                          Row(
                            children: List.generate(
                              onboardingContents.length,
                              (index) => dotIndicator(index),
                            ),
                          ),
                          OnBoardNavBtn(
                            name: 'Next',
                            onPressed: () {
                              _pageController.nextPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            },
                          )
                        ],
                      ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
