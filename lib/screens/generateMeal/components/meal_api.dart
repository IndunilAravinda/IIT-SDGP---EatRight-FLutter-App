import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:eatright/screens/generateMeal/components/meal_model.dart';

class MealApi {
  static Future<List<Meal>> getMeal() async {
    var httpsUri = Uri(
        scheme: 'https',
        host: 'api.spoonacular.com',
        path: '/mealplanner/generate',
        queryParameters: {
          'apiKey': '23b50c88d0b34c518cf0a42fc2abb827'
        }); //Add diet,targetCalories and exclusions here!
    print(httpsUri);
    //var response = await http.get(httpsUri);
    var response = await http.get(Uri.parse(
        'https://api.spoonacular.com/mealplanner/generate?apiKey=23b50c88d0b34c518cf0a42fc2abb827&timeFrame=day&targetCalories=1000'));

    print(response);

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
