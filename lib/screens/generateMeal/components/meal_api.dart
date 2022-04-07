import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:userprofile_and_settings/screens/generateMeal/components/meal_model.dart';

class MealApi {
  static Future<List<Meal>> getMeal() async {
    var APIKey = "23b50c88d0b34c518cf0a42fc2abb827";
    var url = ('https://api.spoonacular.com/mealplanner/generate?apiKey=' +
        APIKey +
        "&timeFrame=day");
    var response = await http.get(url);

    Map data = jsonDecode(response.body);
    //print(data.toString());
    List _temp = [];

    for (var i in data['meals']) {
      _temp.add(i);
    }
    //print(_temp.toString());

    return Meal.MealFromSnapshot(_temp);
  }
}
