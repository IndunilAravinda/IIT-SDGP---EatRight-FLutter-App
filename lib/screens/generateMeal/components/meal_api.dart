import 'dart:convert';
import 'package:eatright/screens/generateMeal/resources/pal_predict_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:eatright/screens/generateMeal/components/meal_model.dart';
import 'package:eatright/screens/generateMeal/resources/pal_predict_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MealApi {
  static Future<List<Meal>> getMeal() async {
    PalPredictModel prediction = PalPredictModel();
    double age = 0;
    double weight = 0;
    double height = 0;
    double userGender = 0;
    String gender = 'Male';
    double bmr = 0;
    String allergies;
    // preferences;
    DocumentSnapshot? userData;
    // Data gathering/retrieving
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final _firestore = FirebaseFirestore.instance;

    User? currentUser = _auth.currentUser;

    _firestore
        .collection('users')
        .doc(currentUser!.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        // userData = documentSnapshot.data() as DocumentSnapshot<Object?>?;
        print('Document data: ${documentSnapshot.data()}');
      } else {
        print('Document does not exist on the database');
      }
    });
    // age = userData!['age'];
    // weight = userData!['weight'];
    // height = userData!['height'];
    // gender = userData!['gender'];

// Applying Revised Harris-Benedict for BMR
    if (gender == 'male') {
      userGender = 1.0;
      bmr = 13.397 * weight + 4.799 * height - 5.677 * age + 88.362;
    } else {
      userGender = 0.0;
      bmr = 9.247 * weight + 3.098 * height - 4.330 * age + 447.593;
    }

    double idealWeight = 22 / height * height;

// model implementation
    double pal = prediction.usePredictModel();
    double totalcalorie = bmr + pal * bmr;

    //get meal function should have a required parameter of Total Calories
    var httpsUri = Uri(
        scheme: 'https',
        host: 'api.spoonacular.com',
        path: '/mealplanner/generate',
        queryParameters: {
          'apiKey': '23b50c88d0b34c518cf0a42fc2abb827',
          'timeFrame': 'week',
          'targetCalories': totalcalorie
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
