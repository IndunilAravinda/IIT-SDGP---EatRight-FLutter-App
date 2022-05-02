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
    required int age,
    required int weight,
    required int height,
    required String gender,
  }) async {
    late String res;

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
          'age': age,
          'weight': weight,
          'height': height,
          'gender': gender,
          'weeks': [age],
          'allergy': [],
          'diet_type': []
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
    //print(res);
    return res;
  }

  // loggin in users
  Future<String> loginUser(
      {required String email, required String password}) async {
    String res = "Incorrect Credentials";

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = "success  :)";
      } else {
        res = "Please fill all the textboxes";
      }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'invalid-email') {
        res = "This Email is in use or invalid";
      } else if (err.code == 'weak-password') {
        res = "Your password is not strong enough";
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
    required int height,
    required int weight,
  }) async {
    String res = "There is an error :(";

    try {
      //if(height.isNotNull || weight.isNotNull)
      if (!height.isNaN || !weight.isNaN) {
        // Add user details to the database
        User? currentUser = _auth.currentUser;

        //_firestore.collection('users').doc(currentUser!.uid).get({'weeks'});

        //Update user database with new weight & height
        _firestore.collection('users').doc(currentUser!.uid).update({
          'weight': weight,
          'height': height,
          //'weeks' : weight,
        });
        res = "Success :)";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
