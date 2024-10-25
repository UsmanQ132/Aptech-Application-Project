import 'dart:async';
import 'package:aptech_app/BottomNavigatorBar.dart';
import 'package:aptech_app/getstarted.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyB1AaJigpQ8RGWjtHlCyKsA4wFUY2v5hPs",
        authDomain: "aptech-auth.firebaseapp.com",
        projectId: "aptech-auth",
        storageBucket: "aptech-auth.appspot.com",
        messagingSenderId: "420151149634",
        appId: "1:420151149634:web:3627e81a23eac227ce19db"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Aptech App',
      
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
   
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _animation;
  late final AudioPlayer _player;

  @override
  void initState() {
    super.initState();

    _player = AudioPlayer();
    _player.setAsset('assets/fight-kung-fu-ninja-sfx_1.mp3').then((_) {
      _player.play(); // Play sound when ready
    }).catchError((error) {
      // Handle error when loading audio asset
      debugPrint('Error loading audio asset: $error');
    });

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    _animation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    Timer(const Duration(seconds: 5), () {
      checkLoginStatus();
      
    });
  }

  // Function to check if user is logged in
  void checkLoginStatus() {
    User? user =
        FirebaseAuth.instance.currentUser; // Get the current Firebase user

    if (mounted) {
      if (user != null) {
        // If user is logged in, navigate to MainPage
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      } else {
        // If no user is logged in, navigate to GetStarted page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Getstarted()),
        );
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _player.dispose(); // Dispose of the audio player
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SlideTransition(
              position: _animation,
              child: const Image(
                alignment: Alignment.center,
                image: AssetImage('assets/logo.png'),
                height: 100,
              ),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromARGB(255, 243, 194, 33),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
