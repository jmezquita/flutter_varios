import 'package:flutter/material.dart';
import 'package:flutter_varios/profile_view.dart';
import 'package:flutter_varios/search_view.dart';
import 'home_view.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    return _HomeApp();
  }
}

class _HomeApp extends State<HomeApp> {
   

   int _indextap = 0;


//ProfileView _profileView =  MyApp.data

   


  List<Widget> widgetsChildren = [
    const HomeView(),
    const SearchView(),
    const ProfileView(1)
  ];

  void ontapTapped(int index) {
    setState(() {
      _indextap = index;
    });
  }

  @override
  Widget build(BuildContext context) {




    return Scaffold(
        body: widgetsChildren[_indextap],
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
                canvasColor: Colors.white, primaryColor: Colors.purple),
            child: BottomNavigationBar(
                currentIndex: _indextap,
                onTap: ontapTapped,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: ""
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: ""
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label:""
                  ),
                ])));
  }
}
