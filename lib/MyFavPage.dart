import 'package:flutter/material.dart';

class MyFavPage extends StatefulWidget {
  const MyFavPage({super.key});

  @override
  State<MyFavPage> createState() => _MyFavPageState();
}

class _MyFavPageState extends State<MyFavPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text("My fav page")],
      ),
    );
  }
}
