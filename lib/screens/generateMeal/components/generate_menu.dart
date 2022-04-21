// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:eatright/screens/generateMeal/components/meal_api.dart';
import 'package:eatright/screens/generateMeal/components/meal_card.dart';
import 'package:eatright/screens/generateMeal/components/meal_model.dart';

class GenerateMenu extends StatefulWidget {
  @override
  GenerateMenuState createState() => GenerateMenuState();
}

class GenerateMenuState extends State {
  static late List<Meal> _meals;
  static bool _isLoading = true;
  static bool viewVisible = true;

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        RaisedButton(
          child: Text(
            'Generate Meal',
            style: Theme.of(context).textTheme.headline3,
          ),
          onPressed: () async {
            _meals = await MealApi.getMeal();
            setState(() {
              _isLoading = false;
              viewVisible = true;
            });
          },
          color: const Color.fromARGB(255, 75, 180, 171),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        const SizedBox(height: 30),
        Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            maintainSemantics: true,
            visible: viewVisible,
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: _meals.length,
                    itemBuilder: (context, index) {
                      return MealCard(
                          title: _meals[index].title,
                          cookTime: _meals[index].cookTime.toString(),
                          sourceUrl: _meals[index].sourceUrl);
                    },
                  )),
        const SizedBox(height: 30),
        RaisedButton(
          child: Text(
            'Try new plan',
            style: Theme.of(context).textTheme.headline3,
          ),
          onPressed: () async {
            _meals = await MealApi.getMeal();
            setState(() {
              _isLoading = false;
            });
          },
          color: const Color.fromARGB(255, 75, 180, 171),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        const SizedBox(height: 50),
    ]
    );
  }
}
