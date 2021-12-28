import 'package:flutter/material.dart';
import 'package:flutter_varios/card_image_list.dart';
import 'gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const <Widget>[
        GradientBack(title: "Popular place"),
        CardImageList()
      ],
    );
  }
}
