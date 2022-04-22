import 'package:eatright/screens/allergiesAndCuisines/components/AllergiesAndCuisines.dart';
import 'package:eatright/screens/mainNavigationPage.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
  }) : super(key: key);
  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: SizedBox(
        height: SizeConfig.blockSizeH! * 10,
        width: SizeConfig.blockSizeH! * 100,
        child: TextButton(
          onPressed: () async {await 
            Navigator.push(context,MaterialPageRoute(builder: (context) => AllergiesAndCuisinesPageWidget(),
            ),);
          },
          child: Text(
            buttonName,
            style: Theme.of(context).textTheme.headline3,
          ),
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
          ),
        ),
      ),
    );
  }
}