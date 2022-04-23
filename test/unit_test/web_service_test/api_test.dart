import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Meal> fetchMeal(http.Client client) async {
  final response = await client
      .get(Uri.parse('https://api.spoonacular.com/mealplanner/generate?apiKey=23b50c88d0b34c518cf0a42fc2abb827&timeFrame=day&targetCalories=1000'));

  if (response.statusCode == 200) {
    //This is the standard response for a successful https request
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Meal.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load meals');
  }
}

class Meal {
  final int id;
  final String imageType;
  final String title;
  final int readyInMinutes;
  final int servings;
  final String sourceUrl;

  const Meal({
    required this.id, 
    required this.title, 
    required this.imageType,
    required this.readyInMinutes, 
    required this.servings, 
    required this.sourceUrl, 
    });

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      id: json['id'],
      imageType: json['imageType'],
      title: json['title'],
      readyInMinutes: json['readyInMinutes'],
      servings: json['servings'],
      sourceUrl: json['sourceUrl'],
    );
  }
}