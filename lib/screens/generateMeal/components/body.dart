import 'package:flutter/material.dart';
import 'package:eatright/screens/generateMeal/components/generate_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Generate_bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: GenerateMenu(),  
    );
  }
}
