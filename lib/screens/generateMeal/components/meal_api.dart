import 'dart:convert';
import 'package:eatright/screens/generateMeal/resources/pal_predict_model.dart';
import 'package:http/http.dart' as http;
import 'package:eatright/screens/generateMeal/components/meal_model.dart';
import 'package:eatright/screens/generateMeal/resources/pal_predict_model.dart';

class MealApi {
  static Future<List<Meal>> getMeal() async {
// model implementation
    PalPredictModel prediction = new PalPredictModel();
    int pal = prediction.usePredictModel();

    //get meal function should have a required parameter of Total Calories
    var httpsUri = Uri(
        scheme: 'https',
        host: 'api.spoonacular.com',
        path: '/mealplanner/generate',
        queryParameters: {
          'apiKey': '23b50c88d0b34c518cf0a42fc2abb827',
          'timeFrame': 'week'
        }); //Add diet,targetCalories and exclusions here!
    print(httpsUri);
    //var response = await http.get(httpsUri);
    var response = await http.get(Uri.parse(
        'https://api.spoonacular.com/mealplanner/generate?apiKey=23b50c88d0b34c518cf0a42fc2abb827&timeFrame=day&targetCalories=1000'));

    //print(response);

    Map data = jsonDecode(response.body);
    //print(data.toString());
    List _temp = [];

    //List days = ["monday","tuesday","wednesday","thursday","friday","saturday","sunday"];

    /*for( var i = 0 ; i < 7; i++ ){
        for (var i in data['week'][days[i]]['meals']) {
          _temp.add(i);
        }
    }*/
    //print(_temp.toString());

// Risky test of the ml model

    // int pal = palPredictModel().predictPAL() as int;

    for (var i in data['meals']) {
      _temp.add(i);
    }
    return Meal.MealFromSnapshot(_temp);
  }
}
