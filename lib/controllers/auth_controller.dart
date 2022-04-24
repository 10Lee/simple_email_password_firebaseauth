import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  get user => _auth.currentUser;

  Future signUp() async {
    try {
      final response = await _auth.createUserWithEmailAndPassword(
          email: email.text, password: password.text);

      Get.offAllNamed('/splash');
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Message", e.message!);
    }
  }

  Future signIn() async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email.text, password: password.text);
      Get.offAllNamed('/splash');
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Message', e.message!);
    }
  }

  Future logout() async {
    try {
      print('SIGN OUT');
      Get.offAllNamed('/splash');
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Message", e.message!);
    }
  }
}
