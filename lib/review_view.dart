import 'package:flutter/material.dart';
import 'package:flutter_varios/commond.dart';
import 'package:flutter_varios/review_model.dart';

class ReviewView extends StatelessWidget {
  final ReviewModel reviewModel;
  final Commond cmd = Commond();

  ReviewView(this.reviewModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Foto del review
    final _photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(reviewModel.pathImage))),
    );
//comments
    final _userCommnents = Container(
      margin: const EdgeInsets.only(left: 2.0),
      child: Text(
        reviewModel.comments,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
      ),
    );

    ///review user info
    final _userInfo = Row(children: <Widget>[
      Container(
        margin: const EdgeInsets.only(left: 2.0),
        child: Text(
          reviewModel.userInfo,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
        ),
      ),
      Row(
          children: cmd.getStars(reviewModel.starCant,
              margin: const EdgeInsets.only(right: 3.0), starsize: 15.0))
    ]);

    final _userName = Container(
      margin: const EdgeInsets.only(left: 2.0),
      child: Text(
        reviewModel.userName,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );

    final _userdetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[_userName, _userInfo, _userCommnents],
    );

    return Row(
      children: <Widget>[_photo, _userdetails],
    );
  }
}
