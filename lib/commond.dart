
import 'package:flutter/material.dart';

enum StarType { fill, half, empy }

class Commond {
  EdgeInsetsGeometry _margin = const EdgeInsets.only(top: 323.0, right: 3.0);
  double _starsize=25.0;

  /// functions


  ///Funtions yo get all stars [startsSelected]. we have to pass the number  seleted stars
  List<Widget> getStars(
      double startsSelected,
      {EdgeInsetsGeometry margin = const EdgeInsets.only(top: 323.0, right: 3.0),
      double starsize = 25.0}) 
      {
    int _startsSelected = 0;
    int _startsNotSselected = 0;
    bool _existStarHalf = false;

    _starsize = starsize;
    _margin = margin;
    //const EdgeInsets.only(top: 323.0, right: 3.0);

    if (startsSelected >= 5) {
      _startsSelected = 5;
      _existStarHalf = false;
    } else {
      _startsSelected = startsSelected.truncate();

      if (startsSelected > _startsSelected) {
        _existStarHalf = true;
      }
    }
    _startsNotSselected = 5 - _startsSelected;
    //final lista = List<Widget>();
    final List<Widget> _list = [];
    //const List<Widget> _list = List<Widget> ;
    //add de favorite star
    for (int i = 0; i < _startsSelected; i++) {
      _list.add(star());
    }
    //add if exist half
    if (_existStarHalf) {
      _startsNotSselected = _startsNotSselected - 1;
      _list.add(star(starType: StarType.half));
    }
    // add star empy
    for (int i = 0; i < _startsNotSselected; i++) {
      _list.add(star(starType: StarType.empy));
    }
    return _list;
  }

  ///Gget a star Widget depending [StarType]
  Widget star({StarType starType = StarType.fill}) {
    Icon _icon;
    const Color _color = Color(0xFFf2C611);

    switch (starType) {
      case StarType.fill:
        _icon =  Icon(
          Icons.star,
          color: _color,
          size:  _starsize
        );
        break;
      case StarType.half:
        _icon =  Icon(Icons.star_half, color: _color,size: _starsize);
        break;
      case StarType.empy:
        _icon =  Icon(Icons.star_border, color: _color,size: _starsize);
        break;
    }

    return Container(margin: _margin, child: _icon);
  }

  /// end functions

}
