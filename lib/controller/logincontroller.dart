import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class authC extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> get statusUser => auth.authStateChanges();

  void userAuth() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        Get.snackbar("User not found", "Please enter a valid email");
      } else {
        Get.snackbar("Welcome", "You are logged in",
            duration: const Duration(seconds: 2));
      }
    });
  }

  void signUser(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      Get.snackbar("User Created", "Please login to continue",
          colorText: Colors.green, duration: const Duration(seconds: 2));
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Invalid Email or Password", e.message.toString(),
          colorText: Colors.red);
    }
  }

  void loginUser(String email, String password) async {
    

      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);

        Get.toNamed("/First");
      } on FirebaseAuthException catch (error) {
        Get.snackbar("Invalid Email or Password", error.message.toString(),
            colorText: Colors.red);
      }

    }
    
  }


void signOut() async {
  await FirebaseAuth.instance.signOut();
}
