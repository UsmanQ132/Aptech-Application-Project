import 'package:aptech_app/BottomNavigatorBar.dart';
import 'package:aptech_app/Courses.dart';
import 'package:aptech_app/Events.dart';
import 'package:aptech_app/Partherswithus.dart';
import 'package:aptech_app/faqs.dart';
import 'package:aptech_app/login.dart';
import 'package:aptech_app/support.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:aptech_app/FormHandle/Utils.dart';



class Sidebar extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    User? user = _auth.currentUser;


    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 193, 7),
          ),
          child: Stack(
            children: [
              // Logo and User info in Column
              Positioned(
                top: 10,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      image: AssetImage('assets/logo.png'),
                      height: 60,
                    ),
                    const SizedBox(height: 20), // Space between logo and user info

                    if (user != null)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.displayName ?? 'Guest User', // Display name or fallback text
                            style:
                             const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Tilt_Neon',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            user.email ?? 'No Email', // Display email or fallback text
                            style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              
              // User profile picture positioned at the top-right
              // Positioned(
              //   top: 3,
              //   right: 2,
              //   child: CircleAvatar(
              //     radius: 16,
              //     backgroundImage: user?.photoURL != null
              //         ? NetworkImage(user!.photoURL!) // User's profile picture from Firebase
              //         : const AssetImage('assets/default_profile.png')
              //             as ImageProvider, // Fallback to default image if no profile picture
              //   ),
              // ),

              
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainPage(),
              )),
        ),
        ListTile(
          leading: const Icon(Icons.book),
          title: const Text('Courses'),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Courses(),
              )),
        ),
        ListTile(
          leading: const Icon(Icons.handshake_sharp),
          title: const Text('Partners With Us'),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PartnerWithUsPage(),
              )),
        ),
        ListTile(
          leading: const Icon(Icons.calendar_today),
          title: const Text('Events & News'),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Events(),
              )),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.comment),
          title: const Text('Faqs'),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Faqs(),
              )),
        ),
        ListTile(
          leading: const Icon(Icons.headset_mic),
          title: const Text('Support'),
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Support(),
              )),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('Logout'),
          onTap: () async {
            FirebaseAuth.instance.signOut(); // Sign out from Firebase Auth
            Utils().toastmessage('User is Successfully LogOut');
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                )); // Redirect to login page after sign-out
          },
        ),
      ]),
    );
  }
}
