import 'package:flutter/material.dart';
import 'package:flutter_varios/button_purpe.dart';
import 'package:flutter_varios/country_model.dart';
import 'commond.dart';

class DescriptionPlace extends StatelessWidget {
  final CountryModel country;

  const DescriptionPlace(this.country, {Key? key}) : super(key: key);

//functions

  @override
  Widget build(BuildContext context) {
    //const String descriptionDummy ="Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

    Commond cmd = Commond();

    final _desciption = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        country.descriptionPlace,
        style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Lato",
            color: Color(0xFF56575a)),
        textAlign: TextAlign.justify,
      ),
    );

    final titleStarts = Row(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            country.name,
            style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        Row(children: cmd.getStars(country.star)) // review star

        // cmd.getStars(stars)
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStarts,
        _desciption,
        const ButtonPurple(buttonText: "Navigator")
      ],
    );

    //throw UnimplementedError();
  }
}
