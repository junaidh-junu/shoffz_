// ignore_for_file: dead_code

import 'package:flutter/material.dart';

List<String> images = [
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
];

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
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
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
            // SizedBox(
            //   height: 50,
            // ),
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
            Container(
              height: 900,
              padding: EdgeInsets.all(10),
              child: GridView.builder(
                physics: ScrollPhysics(),
                // scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(images[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
