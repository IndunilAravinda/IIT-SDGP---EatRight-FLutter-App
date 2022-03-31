import 'package:flutter/material.dart';
import 'package:userprofile_and_settings/screens/onboarding/components/body.dart';
import 'package:userprofile_and_settings/size_config.dart';

class OnboardingScreen extends StatelessWidget {
  static String routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: OnBoardingPage(),
    );
  }
}
