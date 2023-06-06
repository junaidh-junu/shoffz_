// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  profile({super.key});
  final double borderRadius = 25;
  final primaryColor = Color(0xff2749FD);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Icon(
                Icons.person,
                size: 120,
              ),
              radius: 100,
              foregroundColor: Color.fromARGB(255, 0, 0, 0),
            ),
            Divider(thickness: 0),
            Text(
              "Name: ",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
            ),
            Text(
              "Phone Number: ",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
            ),
            Divider(thickness: 0),
            DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    gradient: const LinearGradient(
                        colors: [Color(0xff53E88B), Color(0xff15BE77)])),
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        alignment: Alignment.center,
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(
                                right: 75, left: 75, top: 15, bottom: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(borderRadius)),
                        )),
                    onPressed: () {},
                    child: Text(
                      "Edit Profile",
                      style: const TextStyle(color: Colors.white),
                    ))),
            Divider(),
            DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    gradient: const LinearGradient(
                        colors: [Color(0xff53E88B), Color(0xff15BE77)])),
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        alignment: Alignment.center,
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(
                                right: 75, left: 75, top: 15, bottom: 15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(borderRadius)),
                        )),
                    onPressed: () {},
                    child: Text(
                      " Sign Out ",
                      style: const TextStyle(color: Colors.white),
                    ))),
          ],
        ),
      ),
    );
  }
}
