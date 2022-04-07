import 'package:flutter/material.dart';
import 'package:userprofile_and_settings/screens/generateMeal/components/meal_api.dart';
//import 'package:userprofile_and_settings/screens/generateMeal/components/api_methods.dart';
import 'package:userprofile_and_settings/screens/generateMeal/components/meal_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:userprofile_and_settings/screens/generateMeal/components/meal_model.dart';

class GenerateMenu extends StatefulWidget {
  @override
  GenerateMenuState createState() => GenerateMenuState();
}

class GenerateMenuState extends State {
  late List<Meal> _meals;
  bool _isLoading = true;
  bool viewVisible = false;

  void showWidget() {
    setState(() {
      viewVisible = true;
    });
  }

  @override
  void initState() {
    super.initState();
    getMeals();
  }

  Future<void> getMeals() async {
    _meals = await MealApi.getMeal();
    setState(() {
      _isLoading = false;
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        RaisedButton(
          child: Text(
            'Genenerate Meal',
            style: Theme.of(context).textTheme.headline3,
          ),
          onPressed: showWidget,
          color: Color.fromARGB(255, 75, 180, 171),
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 18),
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child:SingleChildScrollView(
              child: 
               _isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: _meals.length,
                itemBuilder: (context, index) {
                  return MealCard(
                      title: _meals[index].title,
                      cookTime: _meals[index].cookTime.toString(),
                      sourceUrl: _meals[index].sourceUrl
                  );
                },
              )
            )
        )
      ]
              /*children: [
                GestureDetector(
                  child: MealCard(
                    title: 'Ranchero Supper',
                    cookTime: '15 min',
                    sourceUrl:'http://www.tasteofhome.com/Recipes/ranchero-supper',
                  ),
                  onTap: () => launch('http://www.tasteofhome.com/Recipes/ranchero-supper'),
                ),

                GestureDetector(
                  child: MealCard(
                    title: 'Eggs Baked in Crispy Prosciutto Baskets',
                    cookTime: '15 min',
                    sourceUrl:'http://www.tasteofhome.com/Recipes/ranchero-supper',
                  ),
                  onTap: () => launch('http://www.tasteofhome.com/Recipes/ranchero-supper'),
                ),

                GestureDetector(
                  child: MealCard(
                    title: 'Eggs Baked in Crispy Prosciutto Baskets',
                    cookTime: '15 min',
                    sourceUrl:'http://www.tasteofhome.com/Recipes/ranchero-supper',
                  ),
                  onTap: () => launch('http://www.tasteofhome.com/Recipes/ranchero-supper'),
                ),
              ]*/
    );
  }
}
