// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoffz/AccountPage.dart';
import 'package:shoffz/HomePage.dart';
import 'package:shoffz/MyFavPage.dart';
import 'package:shoffz/SellPage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _SelectedIndex = 0;
  static List<Widget> _WidgetOption = <Widget>[
    HomePage(),
    SellPage(),
    MyFavPage(),
    AccountPage()
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
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("shoffz"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              print("menu pressed");
            },
            icon: Icon(Icons.menu)),
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
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.white),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: ("Home"),
            
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_rounded),
              label: ("Sell"),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined),
              label: ("My Fav"),
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: ("Account"),
              backgroundColor: Colors.green),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: _SelectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 20,
        onTap: _onItemTapped,
        elevation: 10,
      ),
    );
  }
}
