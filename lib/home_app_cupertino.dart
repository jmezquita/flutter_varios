import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_varios/profile_view.dart';
import 'package:flutter_varios/search_view.dart';

import 'home_view.dart';

class HomeAppCupertino extends StatelessWidget {
  const HomeAppCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home, color: Colors.indigo), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search, color: Colors.indigo), label: ""),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, color: Colors.indigo), label: ""),
              ],
            ),
            tabBuilder: (BuildContext contex, int index) {
              switch (index) {
                case 0:
                  return CupertinoTabView(
                      builder: (context) => const HomeView());
                case 1:
                  return CupertinoTabView(
                      builder: (context) => const SearchView());
                case 2:
                  return CupertinoTabView(
                      builder: (context) => const ProfileView(1));
                default:
                return CupertinoTabView(
                      builder: (context) => const HomeView());
              }
          
            }));
  }
}
