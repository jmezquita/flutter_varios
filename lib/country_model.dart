// models/location.dart

import 'package:collection/collection.dart';
import 'package:flutter_varios/review_model.dart';

/// Represents a tourism location a user can visit.
class CountryModel {
  int id;
  String name;
  String descriptionPlace;
  String imagePath;
  List<ReviewModel> reviews;

  CountryModel(
      {this.id = 0,
      this.name = "",
      this.descriptionPlace = "",
      this.imagePath = "",
      this.reviews = const []});

  double get star {
    if (reviews.isNotEmpty) {
      return reviews.map((p) => p.starCant).sum / reviews.length;
    } else {
      return 0;
    }
  }
}
