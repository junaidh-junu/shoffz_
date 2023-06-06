// ignore_for_file: dead_code

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? dropvalue = "Palarivattom";
  var drop_location = ["Palarivattom", "Kaloor", "Edapally", "Aluva"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color.fromARGB(255, 169, 165, 165),
            child: Row(
              children: [
                SizedBox(width: 20),
                Image.asset(
                  "assets/ic_location.png",
                  height: 10,
                  width: 10,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Palarivattom,kochi",
                  style: TextStyle(),
                ),
                SizedBox(
                  width: 70,
                ),
                DropdownButton(
                    value: dropvalue,
                    icon: Icon(Icons.arrow_drop_down_sharp),
                    items: drop_location.map((String drop_location) {
                      return DropdownMenuItem(
                          value: drop_location, child: Text(drop_location));
                    }).toList(),
                    onChanged: (String? newval) {
                      setState(() {
                        dropvalue = newval;
                      });
                    })
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                  height: 50,
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        print("icon button pressed");
                      },
                      icon: Icon(Icons.camera_alt),
                      color: Colors.green,
                    ),
                    Text(
                      "Electronics",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        print("icon button pressed");
                      },
                      icon: Icon(Icons.camera_alt),
                      color: Colors.green,
                    ),
                    Text(
                      "Electronics",
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container()
        ],
      ),
    );
  }
}
