// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:shoffz/SignUpPage.dart';
import 'package:shoffz/landingPage.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background2.jpg"),
                fit: BoxFit.cover)),
        child: Stack(
          fit: StackFit.passthrough,
          children: <Widget>[
            Positioned(
              top: 100,
              left: 40,
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Welcome to ",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.green,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 225,
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Shoffz!",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: 47,
              child: Container(
                child: Row(
                  children: [
                    Text(
                      "Your top stop destination ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 210,
              left: 30,
              child: Row(children: [
                SizedBox(
                    height: 40,
                    width: 180,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.facebook_outlined,
                        color: Colors.green,
                      ),
                      label: const Text(
                        'FACEBOOK',
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 1, color: Colors.green),
                          backgroundColor: Color.fromARGB(0, 0, 0, 0)),
                    )),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                    height: 40,
                    width: 160,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.g_mobiledata_outlined,
                        color: Colors.green,
                        size: 30,
                      ),
                      label: const Text('GOOGLE',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold)),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 1, color: Colors.green),
                          backgroundColor: Color.fromARGB(0, 0, 0, 0)),
                    )),
              ]),
            ),
            Positioned(
                top: 285,
                left: 40,
                child: Row(children: [
                  Text(
                    "__________________ ",
                    style: TextStyle(color: Colors.white38),
                  ),
                ])),
            Positioned(
                top: 288,
                left: 160,
                child: Row(children: [
                  Text(
                    "or login via email",
                    style: TextStyle(color: Colors.white38, fontSize: 18),
                  ),
                ])),
            Positioned(
                top: 285,
                left: 297,
                child: Row(children: [
                  Text(
                    "_____________________ ",
                    style: TextStyle(color: Colors.white38),
                  ),
                ])),
            Positioned(
              top: 360,
              left: 35,
              child: SizedBox(
                  width: 380,
                  height: 50,
                  child: TextField(
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.clear),
                      labelText: "Email ID",
                      labelStyle: TextStyle(color: Colors.white70),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                    ),
                  )),
            ),
            Positioned(
              top: 435,
              left: 35,
              child: SizedBox(
                  width: 380,
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.green),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white70),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white70),
                      ),
                    ),
                  )),
            ),
            Positioned(
                top: 490,
                left: 280,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ))),
            Positioned(
                top: 560,
                left: 30,
                child: SizedBox(
                    width: 360,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandingPage()));
                      },
                      child: Text(
                        "SIGN IN",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black),
                    ))),
            Positioned(
              top: 640,
              left: 30,
              child: Row(children: [
                Text(
                  "Don't have an account   ",
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                SizedBox(
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        "SIGN UP",
                      ),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 1, color: Colors.green),
                          backgroundColor: Color.fromARGB(0, 0, 0, 0)),
                    )),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
