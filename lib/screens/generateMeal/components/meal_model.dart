class Meal {
  //final String day;
  final String title;
  final int cookTime;
  final String sourceUrl;

  Meal({required this.title, required this.cookTime, required this.sourceUrl});

  factory Meal.fromJson(dynamic json) {
    return Meal(
        //day: json['week'][0] as String,
        title: json['title'] as String,
        cookTime: json['readyInMinutes'] as int,
        sourceUrl: json['sourceUrl'] as String);
  }
  // ignore: non_constant_identifier_names
  static List<Meal> MealFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      //print(Meal.fromJson(data).toString()); 
      return Meal.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    //print('Meal {title: $title, cookTime: $cookTime, sourceUrl: $sourceUrl}');
    return 'Meal {title: $title, cookTime: $cookTime, sourceUrl: $sourceUrl}';
  }
}
