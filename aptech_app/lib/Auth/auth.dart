import 'package:aptech_app/FormHandle/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailandPassword(
      String email, String password, String username) async {
    try {
      // Create a user with Firebase Auth
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = credential.user;

      if (user != null) {
        // Perform displayName update and Firestore write concurrently

        user.updateDisplayName(username);

        await user.reload(); // Reload user info after update
      }

      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        Utils().toastmessage('The email address is already in use.');
      } else if (e.code == 'weak-password') {
        Utils().toastmessage('The password is too weak.');
      } else if (e.code == 'invalid-email') {
        Utils().toastmessage('The email format is invalid.');
      } else {
        Utils().toastmessage('An error occurred during sign up.');
      }
      return null;
    }
  }

  Future<User?> signinWithEmailandPassword(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        Utils().toastmessage('Invalid email or password');
      }
      return null;
    }
  }
}
