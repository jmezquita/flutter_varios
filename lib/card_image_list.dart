import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {

    final r =  SizedBox(
            height: 350.0,
            child: ListView(
                padding: const EdgeInsets.all(25.0),
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  CardImage(pathimage: "assets/images/c1.jpg"),
                  CardImage(pathimage: "assets/images/c2.jpg"),
                  CardImage(pathimage: "assets/images/c3.jpg"),
                  CardImage(pathimage: "assets/images/c4.jpg"),
                  CardImage(pathimage: "assets/images/c5.jpg"),
                  CardImage(pathimage: "assets/images/c6.jpg")
                ]
            ),

        );

    return r;
  }
}
