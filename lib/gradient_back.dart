import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {

 final String title;
  const GradientBack({Key? key, this.title="Popular"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0XFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)
              ),
              child: Text(title,
              style: const TextStyle(
                color: Colors.white,
                fontSize:30,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold
              )
              ),
              alignment: const Alignment(-0.9,-0.6),
    );
  }
}
