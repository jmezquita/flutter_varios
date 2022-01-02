import 'package:flutter/material.dart';
import 'package:flutter_varios/main.dart';
import 'package:flutter_varios/review_list.dart';

import 'country_model.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeView extends StatelessWidget  
{
  const HomeView({Key? key}) : super(key: key);


  
@override
  Widget build(BuildContext context) {
   

    
    CountryModel countryModel = MyApp.data.countryList.where((p) => p.id == 1).first;


return  Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(countryModel),
            ReviewList(countryModel.reviews)
          ],
        ),
        const HeaderAppBar()
      ],
    );

  }
}
 