import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // signup user function

  signUpUser({
    required String username,
    required String email,
    required String password,
  }) async {
    String res = "There is an error :(";

    try {
      if (username.isNotEmpty || email.isNotEmpty || password.isNotEmpty) {
        // Register the new user

        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        // Add user details to the database
        _firestore.collection('users').doc(cred.user!.uid).set({
          'username': username,
          'uid': cred.user!.uid,
          'email': email,
          'age': 0,
          'weight': 0,
          'height': 0,
          'gender': "",
          'weeks': [],
        });
        res = "Success :)";
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'invalid-email') {
        res = "There is something wrong with this email";
      } else if (err.code == 'weak-password') {
        res = "Please try a stronger password";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // loggin in users
  Future<String> loginUser(
      {required String email, required String password}) async {
    String res = "There is an error :(";

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "success  :)";
      } else {
        res = "Please fill all the textboxes";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  //Method to Log Out Users
  Future<void> logOut() async {
    await _auth.signOut();
  }

  // entering new value for height and weight

  newValue({
    required String height,
    required String weight,
  }) async {
    String res = "There is an error :(";

    try {
      if (height.isNotEmpty || weight.isNotEmpty) {
        // Register the new user

        // Add user details to the database

        var cred;
        _firestore.collection('users').doc(cred.user!.uid).set({
          'weight': 0,
          'height': 0,
        });
        res = "Success :)";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
