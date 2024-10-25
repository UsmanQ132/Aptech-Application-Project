import 'package:aptech_app/BottomNavigatorBar.dart';
import 'package:aptech_app/FormHandle/Utils.dart';
import 'package:aptech_app/Auth/auth.dart';
import 'package:aptech_app/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  _SignupscreenState createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  // Password text hidden
  bool _isObscured = true;

  // Button Loading process
  bool loading = false;

  //From Key Handle
  final formkey = GlobalKey<FormState>();

  // Controllers
  final usernamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordController = TextEditingController();

  // Auth Class
  final Auth _authService = Auth();

  @override
  void dispose() {
    usernamecontroller.dispose();
    emailcontroller.dispose();
    passwordController.dispose();
    super.dispose();
  }

// Sign Up Function
  void signup() async {
    setState(() {
      loading = true;
    });

    String username = usernamecontroller.text.trim();
    String email = emailcontroller.text.trim();
    String password = passwordController.text.trim();

    try {
      User? user = await _authService.signUpWithEmailandPassword(
        email,
        password,
        username,
      );

      if (user != null) {
        Utils().toastmessage('Successfully SignUp');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MainPage()),
        );
      } else {
        Utils().toastmessage('Sign-up failed. Please try again.');
      }
    } catch (e) {
      Utils()
          .toastmessage('An error occurred during sign-up. Please try again.');
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

// Sign Up With Google Function
  signInWithGooge() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential authCredential = GoogleAuthProvider.credential(
            idToken: googleSignInAuthentication.idToken,
            accessToken: googleSignInAuthentication.accessToken);

        // Getting users credential
        await FirebaseAuth.instance.signInWithCredential(authCredential);

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainPage(),
            ));
      }
    } catch (e) {
      Utils().toastmessage('Some Error Occured');
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    var isTablet = screenWidth >= 600;
    var containerWidth = isTablet ? screenWidth * 0.6 : screenWidth * 0.75;
    var fontSizeLarge = isTablet ? 40.0 : 32.0;
    var buttonHeight = isTablet ? 60.0 : 45.0;
    var buttonFontSize = isTablet ? 22.0 : 18.0;
    var textFieldHeight = isTablet ? 55.0 : 50.0;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255)
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 60),
                    child: Image.asset(
                      'assets/logo.png',
                      height: 60,
                    ),
                  ),
                  Text(
                    'Join Us Today',
                    style: TextStyle(
                      fontSize: fontSizeLarge,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Container(
                          width: containerWidth,
                          height: textFieldHeight,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            controller: usernamecontroller,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username',
                              icon: Icon(Icons.person),
                              iconColor: Colors.black,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter your username';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: containerWidth,
                          height: textFieldHeight,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailcontroller,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email',
                              icon: Icon(Icons.email),
                              iconColor: Colors.black,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter your Email';
                              } else if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                                return 'Enter a valid Email';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: containerWidth,
                          height: textFieldHeight,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: TextFormField(
                              keyboardType: TextInputType.text,
                              controller: passwordController,
                              obscureText: _isObscured,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                icon: const Icon(Icons.lock),
                                iconColor: Colors.black,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _isObscured
                                        ? Icons.visibility
                                        : Icons
                                            .visibility_off, // Change icon based on state
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isObscured =
                                          !_isObscured; // Toggle the state
                                    });
                                  },
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter your password';
                                }

                                // Check if the password is at least 8 characters long
                                if (value.length < 8) {
                                  return 'Password must be at least 8 characters long';
                                }

                                // Check if the first letter is uppercase
                                if (!RegExp(r'^[A-Z]').hasMatch(value)) {
                                  return 'The first letter of the password must be uppercase';
                                }

                                // Check if the password contains at least one digit
                                if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
                                  return 'Password must contain at least one number';
                                }

                                // Check if the password contains at least one special character
                                if (!RegExp(r'(?=.*[@$!%*?&])')
                                    .hasMatch(value)) {
                                  return 'Password must contain at least one special character (@, \$, !, %, *, ?, &)';
                                }

                                // If all conditions are met, return null (no error)
                                return null;
                              }),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: containerWidth,
                          height: buttonHeight,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 2, 107, 253),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            onPressed: () => {
                              if (formkey.currentState!.validate())
                                {
                                  signup(),
                                }
                            },
                            child: loading
                                ? const CircularProgressIndicator(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  )
                                : Text(
                                    'SignUp',
                                    style: TextStyle(
                                      fontSize: buttonFontSize,
                                      color: const Color.fromARGB(
                                          255, 255, 255, 255),
                                    ),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: containerWidth,
                    height: buttonHeight,
                    child: const Row(
                      children: <Widget>[
                        Expanded(child: Divider(color: Colors.grey)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text("Or With"),
                        ),
                        Expanded(child: Divider(color: Colors.grey)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: containerWidth,
                    height: buttonHeight,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.grey),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        signInWithGooge();
                      },
                      icon: Image.asset(
                        'google.png', // Ensure this image exists in assets
                        height: 24,
                        width: 24,
                      ),
                      label: Text(
                        'SignUp with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: buttonFontSize,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("I Already have an account? "),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          ),
                        },
                        child: const Text(
                          'SignIn',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
