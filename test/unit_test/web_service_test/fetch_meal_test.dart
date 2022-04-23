import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'api_test.dart';

import 'fetch_meal_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  group('fetchMeal', () {
    test('returns an Meal if the http call completes successfully', () async {
      final client = MockClient();

      // Use Mockito to return a successful response when it calls the
      // provided http.Client.
      when(client
              .get(Uri.parse('https://api.spoonacular.com/mealplanner/generate?apiKey=23b50c88d0b34c518cf0a42fc2abb827&timeFrame=day&targetCalories=1000')))
          .thenAnswer((_) async =>
              http.Response('{"id": 1, "imageType": "jpg", "title": "mock", "readyInMinutes": 10, "servings": 5, "sourceUrl": "mock_link"}', 200));

      expect(await fetchMeal(client), isA<Meal>());
    });

    test('throws an exception if the http call completes with an error', () {
      final client = MockClient();

      // Use Mockito to return an unsuccessful response when it calls the
      // provided http.Client.
      when(client
              .get(Uri.parse('https://api.spoonacular.com/mealplanner/generate?apiKey=23b50c88d0b34c518cf0a42fc2abb827&timeFrame=day&targetCalories=1000')))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(fetchMeal(client), throwsException);
    });
  });
}
