import 'package:aptech_app/BottomNavigatorBar.dart';
import 'package:aptech_app/FormHandle/forgotpassword.dart';
import 'package:aptech_app/Auth/auth.dart';
import 'package:aptech_app/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:aptech_app/FormHandle/Utils.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Password Hidden Icon
  bool _isObscured = true;

  // Button Loading process
  bool loading = false;

  //From Key Handle
  final formkey = GlobalKey<FormState>();
  // Controllers
  final emailcontroller = TextEditingController();
  final passwordController = TextEditingController();

  // Auth Class
  final Auth _authService = Auth();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordController.dispose();
  }

// Sign In Function
  void signin() async {
    setState(() {
      loading = true;
    });

    String email = emailcontroller.text;
    String password = passwordController.text;

    User? user = await _authService.signinWithEmailandPassword(email, password);

    setState(() {
      loading = false;
    });

    if (user != null) {
      Utils().toastmessage('SignIn is Successfully');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    } else {
      Utils().toastmessage('Some Error Occured');
    }
  }

// Sign In With Google Function
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
    // Get screen size
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    // Define scaling factors
    var isTablet = screenWidth >= 600;
    var containerWidth = isTablet ? screenWidth * 0.6 : screenWidth * 0.75;
    var fontSizeLarge = isTablet ? 40.0 : 32.0;
    // var fontSizeSmall = isTablet ? 20.0 : 16.0;
    var buttonHeight = isTablet ? 60.0 : 40.0;
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
                    margin: const EdgeInsets.only(
                        bottom: 60), // Add some spacing below the logo
                    child: Image.asset(
                      'assets/logo.png', // Adjust the path if needed
                      height: 60,
                    ),
                  ),
                  // Title
                  Text(
                    'Welcome Back!',
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
                        // Email Field
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
                        // Password Field with eye icon to toggle visibility
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
                              obscureText: _isObscured,
                              controller: passwordController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Password',
                                icon: Icon(Icons.lock),
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
                                return null;
                              }
                              ),
                        ),
                        const SizedBox(height: 3),
                        // Remember me and Forgot Password Row

                        Container(
                          width: containerWidth,
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ForgotPasswordScreen()));
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 2, 107, 253)),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                        // Login Button
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
                                  signin(),
                                }
                            },
                            child: loading
                                ? const CircularProgressIndicator(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  )
                                : Text(
                                    'Login',
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
                  // Continue with Google Button
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
                        'google.png', // Make sure you have this image in your assets
                        height: 24, // Adjust size as needed
                        width: 24,
                      ),
                      label: Text(
                        'Continue with Google',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: buttonFontSize,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Don't have an account? Sign Up

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signupscreen(),
                            ),
                          ),
                        },
                        child: const Text(
                          'Sign Up',
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
