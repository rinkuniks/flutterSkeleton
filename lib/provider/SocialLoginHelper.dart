import 'dart:convert';
import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';


// import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class SocialLoginHelper {

  Future<UserCredential?> signInFB(BuildContext context) async {
    UserCredential userCredential;

    try {
      await FirebaseAuth.instance.signOut();
     // Utility.logInDebug("FINISHED ");

      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Create a credential from the access token

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      // Once signed in, return the UserCredential

      userCredential = await FirebaseAuth.instance
          .signInWithCredential(facebookAuthCredential);


    } catch (e) {
      errorHandle(context, e);
     // Utility.logInDebug("FINISHED 2 ${e.toString()}");
      return null;
    }

    return userCredential;
  }

  Future<UserCredential?> signInWithGoogle(BuildContext context) async {
    UserCredential userCredential;

    // Trigger the authentication flow
    try {
      await GoogleSignIn().signOut();

      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      OAuthCredential? credential;
      // Create a new credential
      if (googleAuth?.accessToken != null) {
        credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
      }

      // Once signed in, return the UserCredential
      userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential!);
          print("---------------------------google login ${userCredential}");
      return userCredential;
    } on PlatformException catch (err) {
      // Checks for type PlatformException
      if (err.code == 'sign_in_canceled') {
        // Checks for sign_in_canceled exception
        print(err.toString());
      } else {
        throw err; // Throws PlatformException again because it wasn't the one we wanted
      }
    }
    // catch (error) {
    //   errorHandle(context, error);
    //   return null;
    // }
  }

  // Future<dynamic> signInWithApple(BuildContext context) async {
  //   final rawNonce = generateNonce();
  //   final nonce = sha256ofString(rawNonce);

  //   final appleCredential = await SignInWithApple.getAppleIDCredential(
  //     scopes: [
  //       AppleIDAuthorizationScopes.email,
  //       AppleIDAuthorizationScopes.fullName,
  //     ],
  //     nonce: nonce,
  //   );

  //   print(appleCredential);
  //   final oauthCredential = OAuthProvider("apple.com").credential(
  //     idToken: appleCredential.identityToken,
  //     rawNonce: rawNonce,
  //   );

  //   // Sign in the user with Firebase. If the nonce we generated earlier does
  //   // not match the nonce in `appleCredential.identityToken`, sign in will fail.
  //   return await FirebaseAuth.instance.signInWithCredential(oauthCredential);
  // }

//  String generateNonce([int length = 32]) {
//     const charset =
//         '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
//     final random = Random.secure();
//     return List.generate(length, (_) => charset[random.nextInt(charset.length)])
//         .join();
//   }

//   /// Returns the sha256 hash of [input] in hex notation.
//   String sha256ofString(String input) {
//     final bytes = utf8.encode(input);
//     final digest = sha256.convert(bytes);
//     return digest.toString();
//   }

  void errorHandle(BuildContext context, error) {
    try {
      print("error 123-------------------facebook ${error}");
     // Utility.logInDebug("error 123 $error");
      //Utility.showSnackBarX(error.message, context);
    } catch (e) {}
  }

}
