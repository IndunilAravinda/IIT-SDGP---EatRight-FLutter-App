import 'package:flutter/material.dart';
import 'package:eatright/screens/generateMeal/components/generate_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/welcome_page.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child:SingleChildScrollView( 
        child: GenerateMenu(),
      )  
    );
  }
}
