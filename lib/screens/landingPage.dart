// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, override_on_non_overriding_member, unused_field

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:shoffz/screens/HomePage.dart';
import 'package:shoffz/screens/MyFavPage.dart';
import 'package:shoffz/screens/RentPage.dart';

import 'package:shoffz/screens/profile.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _SelectedIndex = 0;
  static List<Widget> _WidgetOption = <Widget>[
    HomePage(),
    RentPage(),
    MyFavPage(),
    profile(),
  ];

  final navigationitems = <Widget>[
    Icon(
      Icons.home,
      color: Colors.black,
    ),
    Icon(
      Icons.add_circle_outline_rounded,
      color: Colors.black,
    ),
    Icon(
      Icons.favorite_outline_outlined,
      color: Colors.black,
    ),
    Icon(
      Icons.person_outline_rounded,
      color: Colors.black,
    ),
  ];

  @override
  void _onItemTapped(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("$appbartext"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  print("search pressed");
                },
                icon: Icon(Icons.search)),
          )
        ],
      ),
      body: Center(
        child: _WidgetOption.elementAt(_SelectedIndex),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.easeIn,
        height: 50,
        animationDuration: Duration(milliseconds: 300),
        color: Colors.green,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        items: navigationitems,
        index: _SelectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
