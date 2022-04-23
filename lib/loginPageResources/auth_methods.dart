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
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
