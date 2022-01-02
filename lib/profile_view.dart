
import 'package:flutter/material.dart';
import 'package:flutter_varios/profile_model.dart';

import 'main.dart';

class ProfileView extends StatelessWidget {
  final int profileid;

  const ProfileView(this.profileid, {Key? key}) : super(key: key);

  FloatingActionButton _favoriteButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(
        Icons.favorite,
        color: Colors.white,
      ),
      mini: true,
      backgroundColor: Colors.greenAccent.shade400,
    );
  }

  Stack stackCardDescription(String countryName,String countryDetail, String steep) {
    return Stack(
      alignment: const Alignment(0.9, 1.2),
      children: [gatCarPlaceDetail(countryName,countryDetail,steep), _favoriteButton()],
    );
  }

  Widget getCarPlaces(String pathimage) {
    return Container(
      height: 240.0,
      margin: const EdgeInsets.only(bottom: 90.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathimage)),
          borderRadius: const BorderRadius.all(Radius.circular(25.0)),
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 20.0,
                offset: Offset(0.0, 7.0))
          ]),
    );
  }

  Widget gatCarPlaceDetail(String countryName,String countryDetail, String steep) {
    return Container(
      margin: const EdgeInsets.only(top: 190.0, left: 50),
      height: 110,
      width: 280,

      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
      child:
      Container(
        margin: const  EdgeInsets.only(left:  20, top: 10),
        child:        Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children:  <Widget>[
          Text(
            countryName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold)
            
          ),
          Text(countryDetail,
              style:const TextStyle(
                  color: Colors.black38,
                  fontSize: 12,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold)),
            const  Text("playas, montañas y rios",
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 12,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold)),
          Text(
            "Step: $steep",
            style:const TextStyle(
                color: Colors.amber,
                fontSize: 18,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold),
          ),
        ],
      ),

      )

    );
  }

  Widget bulderCar(String pathimage,String countryName,String countryDetail, String steep) {
    return Stack(
      children: <Widget>[getCarPlaces(pathimage), 
      stackCardDescription(countryName,countryDetail,steep)
      ],
    );
  }

  void onPressedButton() {}

  @override
  Widget build(BuildContext context) {
    ProfileModel _profile =
        MyApp.data.profilelist.where((p) => p.id == profileid).first;

    Container _messageButton = Container(
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.050),
        height: 40,
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white38,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.mail_outline,
                        color: Color(0xFF9575cd),
                      ),
                      onPressed: () {},
                    )))));

    Container _personButton = Container(
        margin:
            // EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.00, left: 15),
            const EdgeInsets.only(right: 20),
        height: 40,
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white38,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.person,
                        color: Color(0xFF9575cd),
                      ),
                      onPressed: () {},
                    )))));

    Container _tagButton = Container(
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.050),
        height: 40,
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white70,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.bookmark_outline,
                        color: Color(0xFF9575cd),
                      ),
                      onPressed: () {},
                    )))));

    Container _cardButton = Container(
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.050),
        height: 40,
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white38,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.card_giftcard,
                        color: Color(0xFF9575cd),
                      ),
                      onPressed: () {},
                    )))));

    Container _addButton = Container(
        margin:
            EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.050),
        child: Material(
            color: Colors.transparent,
            child: Center(
                child: Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Color(0xFF9575cd),
                      ),
                      iconSize: 40,
                      onPressed: () {},
                    )))));

    Container _buttonBar = Container(
      margin: const EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _tagButton,
          _cardButton,
          _addButton,
          _messageButton,
          _personButton
        ],
      ),
    );

    final _list = Container(
      margin: const EdgeInsets.only(top: 260.0),
      child: ListView(
          padding: const EdgeInsets.all(15.0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            bulderCar("assets/images/c1.jpg", "Republic dominicana","Este es un hermoso pais caribeño","150,265,356"),
            bulderCar("assets/images/c2.jpg","España","Penisula iberica hermosa","560,254,321"),
            bulderCar("assets/images/c3.jpg","Estado Unido","Norte America ","825,655,124"),
            bulderCar("assets/images/c4.jpg","Haiti","Vecino de Republica dominicana","98,564,259"),
            bulderCar("assets/images/c5.jpg","Francia","Excelente gastornomia","998,564,259"),
            bulderCar("assets/images/c6.jpg","Cuba","Isla para explorar Virgen","166.235.489")
          ]),
    );

    final profileDedatil = Container(
      margin: const EdgeInsets.only(top: 40.0, left: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text("Profile",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.bold)),
              IconButton(
                alignment: Alignment.bottomCenter,
                onPressed: onPressedButton,
                icon: const Icon(Icons.settings, color: Colors.white, size: 18),
              )
            ],
          ),

          ///Row profile info
          Row(
            children: [
              //container Photo profile
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(_profile.pathImage))),
              ),

//container Profile Info
              Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_profile.userName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold)),
                      Text(_profile.email,
                          style: const TextStyle(
                              color: Colors.white24,
                              fontSize: 16,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.bold))
                    ],
                  )),
            ],
          ),
//button collection
          _buttonBar
        ],
      ),
    );

    final _gradientback = Container(
      height: 350.0,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF4268D3), Color(0XFF584CD1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: profileDedatil,
      alignment: const Alignment(-0.9, -0.6),
    );

    final appbar = Stack(
      children: <Widget>[_gradientback, _list],
    );

    return appbar;

    //return Container(color: Colors.indigo, );
  }

  void newMethod() {}
}
