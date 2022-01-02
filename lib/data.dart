

import 'package:flutter_varios/country_model.dart';
import 'package:flutter_varios/idata.dart';
import 'package:flutter_varios/review_model.dart';

import 'profile_model.dart';


class Data implements IData {

  List<CountryModel> _countryList = [];
  List<ReviewModel> _reviewList = [];

  List<ProfileModel> _profilelist = [];

 @override
  List<CountryModel> get countryList => _countryList;

  @override
  List<ReviewModel> get reviewList => _reviewList;

  @override
  List<ProfileModel> get profilelist => _profilelist;

 @override
  void load() {
    _profilelist = getProfiles();
    _reviewList = getReviews();
    _countryList = getCountries();
  }

  List<CountryModel> getCountries() {
    List<CountryModel> _list = [];

    _list.add(CountryModel(
        id: 1,
        name: "Rep Dominicana",
        descriptionPlace:
            "República Dominicana es un país del Caribe que comparte la isla La Española con Haití al oeste. Es conocida por sus playas, centros turísticos y áreas de golf. Su terreno incluye bosques tropicales, sabana y tierras altas, incluida Pico Duarte, la montaña más alta del Caribe. La capital Santo Domingo tiene elementos de estilo español, como la Catedral Primada de América de estilo gótico, que tiene 5 siglos de antigüedad, en su distrito Zona Colonial.",
        imagePath: "assets/images/flag1.jpg",
        reviews: reviewList.where((p) => p.paisId == 1).toList()));

    _list.add(CountryModel(
        id: 2,
        name: "España",
        descriptionPlace:
            "España, país de la península ibérica de Europa, incluye 17 regiones autónomas con diversas características geográficas y culturales. En Madrid, su capital, se encuentra el Palacio Real y el Museo del Prado, que alberga obras de maestros europeos. Segovia tiene un castillo medieval (el Alcázar) y un acueducto romano intacto. La capital de Cataluña, Barcelona, se caracteriza por las obras modernistas extravagantes de Antoni Gaudí, como el templo de la Sagrada Familia.",
        imagePath: "assets/images/flag2.jpg",
        reviews: []));

    return _list;
  }

  List<ProfileModel> getProfiles() {
    List<ProfileModel> _list = [];

    _list.add(ProfileModel(
        id: 1,
        pathImage: 'assets/images/ani1.jpg',
        userName: "Juan Carlos",
        email: "jmgysoft@hotmail.com"));

    _list.add(ProfileModel(
        id: 2,
        pathImage: 'assets/images/ani2.jpg',
        userName: "Joseph",
        email: "jmgysoft@hotmail.com"));

    _list.add(ProfileModel(
        id: 3,
        pathImage: 'assets/images/ani3.jpg',
        userName: "yosi",
        email: "jmgysoft@hotmail.com"));

      _list.add(ProfileModel(
        id: 4,
        pathImage: 'assets/images/ani4.jpg',
        userName: "ana",
        email: "jmgysoft@hotmail.com"));

         _list.add(ProfileModel(
        id: 5,
        pathImage: 'assets/images/ani5.jpg',
        userName: "miguel",
        email: "jmgysoft@hotmail.com"));

      _list.add(ProfileModel(
        id: 6,
        pathImage: 'assets/images/ani6.jpg',
        userName: "starling",
        email: "jmgysoft@hotmail.com"));

        
      _list.add(ProfileModel(
        id: 7,
        pathImage: 'assets/images/ani7.jpg',
        userName: "anilda",
        email: "jmgysoft@hotmail.com"));

    return _list;
  }

  List<ReviewModel> getReviews() {
    List<ReviewModel> _list = [];
     
    _list.add(
        ReviewModel(
          profilelist.where((w) => w.id==1).first,
            paisId: 1,
            userInfo: "1 review. 5 photo",
            comments: "the is an amazing place in Dom Rep",
            starCant: 3.5)
          );

    _list.add(
      ReviewModel(
        profilelist.where((w) => w.id==2).first,
          paisId: 1,
          userInfo: "1 review. 2 photo",
          comments: "the is an amazing place in Dom Repu",
          starCant: 5),
    );

    _list.add(
      ReviewModel(
        profilelist.where((w) => w.id==3).first,
          paisId: 1,
          userInfo: "1 review. 3 photo",
          comments: "the is an amazing place in Dom Repu",
          starCant: 2.5),
    );

    _list.add(
      ReviewModel(
         profilelist.where((w) => w.id==4).first,
          paisId: 1,
          userInfo: "1 review. 1 photo",
          comments: "the is an amazing place in Dom Repu",
          starCant: 4.5),
    );

    _list.add(
      ReviewModel(
          profilelist.where((w) => w.id==5).first,
          userInfo: "1 review. 2 photo",
          comments: "the is an amazing place in Dom Repu",
          starCant: 4),
    );

    _list.add(
      ReviewModel(
        profilelist.where((w) => w.id==6).first,
          paisId: 1,
          userInfo: "1 review. 2 photo",
          comments: "the is an amazing place in Dom Repu",
          starCant: 5),
    );

    _list.add(
      ReviewModel(
              profilelist.where((w) => w.id==7).first,
          paisId: 1,
          userInfo: "1 review. 2 photo",
          comments: "the is an amazing place in Dom Repu",
          starCant: 1.5),
    );

    return _list;
  }
}
