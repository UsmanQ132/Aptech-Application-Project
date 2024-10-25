
import 'package:aptech_app/Semster%20hdse/S1.dart';
import 'package:aptech_app/Semster%20hdse/S2.dart';
import 'package:aptech_app/Semster%20hdse/S3.dart';
import 'package:aptech_app/Semster%20hdse/S4.dart';
import 'package:aptech_app/Semster%20hdse/S5.dart';
import 'package:aptech_app/Semster%20hdse/S6.dart';
import 'package:flutter/material.dart';

class Semester1 extends StatefulWidget {
  const Semester1({super.key});

  @override
  _Semester1State createState() => _Semester1State();
}

class _Semester1State extends State<Semester1> {
  int currentIndex = 0;

  final List<Widget> pages = [
    S1(),
    S2(),
    S3(),
    S4(),
    S5(),
    S6()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                child: Container(
                  padding: const EdgeInsets.only(top: 35, bottom: 12),
                  color: const Color.fromARGB(255, 255, 193, 7),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Semester',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 5,
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Navigates back
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          
          // Top row of 4 buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              const SizedBox(width: 4),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: currentIndex == 0 ? Colors.orange : Colors.white,
                ),
                child: const Text(
                  'CPISM',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 2),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: currentIndex == 1 ? Colors.orange : Colors.white,
                ),
                child: const Text(
                  'DISM',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 2),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 2;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: currentIndex == 2 ? Colors.orange : Colors.white,
                ),
                child: const Text(
                  'HDSE I',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
 
            ],
          ),
          const SizedBox(height: 10),

          // Bottom row of 2 buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const SizedBox(width: 4),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: currentIndex == 3 ? Colors.orange : Colors.white,
                ),
                child: const Text(
                  'HDSE II',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 4;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: currentIndex == 4 ? Colors.orange : Colors.white,
                ),
                child: const Text(
                  'HDSE III',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(width: 2),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 5;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: currentIndex == 5 ? Colors.orange : Colors.white,
                ),
                child: const Text(
                  'HDSE IV',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          
          // Page display
          Expanded(
            child: pages[currentIndex],
          ),
        ],
      ),
    );
  }
}
