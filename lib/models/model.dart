import 'package:flutter/foundation.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> Specifications;
  final List<String> details;
  final Complexity complexity;
  final Affordability affordability;


  const Meal({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.categories,
    @required this.Specifications,
    @required this.details,
    @required this.complexity,
    @required this.affordability,

  });
}
