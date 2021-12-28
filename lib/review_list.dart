import 'package:flutter/material.dart';
import 'package:flutter_varios/review_model.dart';
import 'package:flutter_varios/review_view.dart';

class ReviewList extends StatelessWidget {
  const ReviewList(this.reviewViewModel, {Key? key}) : super(key: key);

  final int cantReview = 0;
  final List<ReviewModel> reviewViewModel;

  List<Widget> getAllReviews() {
    final List<Widget> _list = [];

    for (var e in reviewViewModel) {
      _list.add(ReviewView(e));
    }

    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: getAllReviews());
  }
}
