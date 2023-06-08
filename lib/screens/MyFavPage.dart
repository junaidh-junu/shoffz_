// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shoffz/screens/favourites/favourites.dart';
import 'package:shoffz/screens/favourites/myads.dart';

class MyFavPage extends StatefulWidget {
  const MyFavPage({super.key});

  @override
  State<MyFavPage> createState() => _MyFavPageState();
}

class _MyFavPageState extends State<MyFavPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.ads_click,
                ),
                text: "My ads",
              ),
              Tab(icon: Icon(Icons.camera_alt), text: "Favourites")
            ],
          ),
          body: TabBarView(
            children: [
              myads(),
              favourites(),
            ],
          ),
        ),
      ),
    );
  }
}
