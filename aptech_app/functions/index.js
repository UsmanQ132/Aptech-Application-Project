/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

const {onRequest} = require("firebase-functions/v2/https");
const logger = require("firebase-functions/logger");

// Create and deploy your first functions
// https://firebase.google.com/docs/functions/get-started

// exports.helloWorld = onRequest((request, response) => {
//   logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });


const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.beforeCreate = functions.auth.user().beforeCreate((user, context) => {
  // Check if the user is signing up with email/password
  if (user.providerData && user.providerData[0].providerId === "password") {
    // Perform checks to see if the user has a Google Sign-In
    return admin.auth().getUserByEmail(user.email)
      .then((existingUser) => {
        if (existingUser.providerData.some((provider) => provider.providerId === 'google.com')) {
          // Allow user creation if they already signed in with Google
          return;
        } else {
          // Throw error if email is not associated with Google Sign-In
          throw new functions.auth.HttpsError(
            'invalid-argument',
            'The email is not associated with Google Sign-In.'
          );
        }
      })
      .catch((error) => {
        // Handle any errors (such as no existing user)
        throw new functions.auth.HttpsError(
          'invalid-argument',
          'Error checking user sign-in methods: ' + error.message
        );
      });
  }

  // If other providers like Google or Facebook are used, proceed
  return;
});
