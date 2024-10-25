import 'dart:ui';
import 'package:aptech_app/SignUp.dart';
import 'package:flutter/material.dart';

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/BG.jpg'), // Path to your image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Backdrop Filter (Blur Effect)
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0), // Blur effect
              child: Container(
                color: const Color.fromARGB(167, 149, 149, 149)
                    .withOpacity(0.2), // Adjust the overlay color and opacity
              ),
            ),
            // Overlay Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center vertically
                children: [
                  // Align logo at the center
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'AptechLogo.png', // Replace with your logo image path
                      height: 240, // Adjust height as needed
                    ),
                  ),
                  const SizedBox(
                      height: 220), // Add space between logo and text
                  // Align tagline at the center
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Learning that gets you',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(204, 255, 235, 59),
                        fontWeight: FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox( height: 5), // Add space between tagline and description
                  
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Skills for your present (and your future).Get\n started with us.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox( height: 10), // Add space between text and button

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signupscreen()),
                        );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow, // Button color
                        padding:
                            const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),

                      child: const Text(
                        'GET STARTED',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
