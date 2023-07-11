import 'package:easy_loading_button/easy_loading_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/logincontroller.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({Key? key}) : super(key: key);

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  final userLogin = Get.put(authC());

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return ListView(physics: const BouncingScrollPhysics(), children: [
      Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 50,
          ),
          EasyButton(
            onPressed: () {
              if (passwordController.text.length <= 6) {
                Get.snackbar("Password too short",
                    "Please enter a password with more than 6 characters");
              }
              userLogin.loginUser(
                  emailController.text, passwordController.text);
            },
            idleStateWidget: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
            loadingStateWidget: const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            buttonColor: Colors.deepOrangeAccent,
            height: 50,
            width: 200,
            borderRadius: 20,
          )
        ],
      ),
    ]);
  }
}
