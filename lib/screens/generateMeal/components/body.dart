import 'package:flutter/material.dart';
import 'package:eatright/screens/generateMeal/components/generate_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GenerateMenu(), 
    );
  }
}
