import 'package:flutter/material.dart';

import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  const CardImage({Key? key, this.pathimage = ""}) : super(key: key);

  final String pathimage;

  @override
  Widget build(BuildContext context) {
    final _card = Container(
      height: 350.0,
      width: 250.0,
      margin: const EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathimage)),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    return Stack(
     // alignment: Alignment.bottomRight,
         alignment: const Alignment(0.9,1.1),
      children: [
        _card,
       const FloatingActionButtonGreen()
      ],


    );
  
  }
}
