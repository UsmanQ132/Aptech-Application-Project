import 'package:aptech_app/FormHandle/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final emailController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), 
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: 
          // Main Content 
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: size.height * 0.2), 
                  Text(
                    'Recover Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.06, // Responsive font size
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    'Enter your email to recover your password',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: size.width * 0.04, // Responsive font size
                      color: const Color.fromARGB(255, 96, 96, 96),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: size.height * 0.03),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SizedBox(
                    width: size.width * 0.5, // Adjust button width dynamically
                    height:
                        size.height * 0.06, // Adjust button height dynamically
                    child: ElevatedButton(
                      onPressed: () {
                        if (emailController.text.isNotEmpty) {
                          _auth
                              .sendPasswordResetEmail(
                                  email: emailController.text.trim())
                              .then((value) {
                            Utils().toastmessage(
                                'Check your email to recover your password');
                          }).onError((error, stackTrace) {
                            Utils().toastmessage(error.toString());
                          });
                        } else {
                          Utils().toastmessage('Please enter an email');
                        }
                      },
                      child: Text(
                        'Forgot',
                        style: TextStyle(
                          fontSize: size.width * 0.045, // Responsive font size
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height:
                          size.height * 0.02), // Extra spacing at the bottom
                ],
              ),
            ),
          ),
   
    );
  }
}
