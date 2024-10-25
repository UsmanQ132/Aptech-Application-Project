
import 'package:aptech_app/AboutUs.dart';
import 'package:aptech_app/Home.dart';
import 'package:aptech_app/affiliations.dart';  
import 'package:aptech_app/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentindex = 0;

  final _Pages = <Widget>[
    HomePage(),
    AffiliationsScreen(),
    Location(),
    const Aboutus(),
  ];

  final _Navigationicons = <Widget>[
    const Icon(Icons.home, size: 30),
    const Icon(Icons.business, size: 30),
    const Icon(Icons.location_pin, size: 30),
    const Icon(Icons.description, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Pages[currentindex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent, // Background color of the page
        color: const Color.fromARGB(255, 255, 193, 7), // Color of the navigation bar
        buttonBackgroundColor: const Color.fromARGB(255, 255, 193, 7), // Background color of the selected icon
        height: 60, // Height of the navigation bar
        items: _Navigationicons,
        index: currentindex,
        onTap: (int index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
