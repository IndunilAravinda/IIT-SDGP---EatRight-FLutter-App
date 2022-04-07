class Meal {
  //final String day;
  final String title;
  final String cookTime;
  final String sourceUrl;

  Meal({required this.title, required this.cookTime, required this.sourceUrl});

  factory Meal.fromJson(dynamic json) {
    return Meal(
        //day: json['week'][0] as String,
        title: json['meals'] as String,
        cookTime: json['meals'] as String,
        sourceUrl: json['meals'] as String);
  }
  static List<Meal> MealFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Meal.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'Meal {title: $title, cookTime: $cookTime, sourceUrl: $sourceUrl}';
  }
}