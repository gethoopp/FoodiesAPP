import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/logincontroller.dart';
import 'login.dart';




class RegisterUSer extends StatelessWidget {
   RegisterUSer({super.key});

  
  final userRegister = Get.put(authC());

  @override
  Widget build(BuildContext context) {
    final passwordController = TextEditingController();
    final emailController = TextEditingController();
    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: TextFormField(
                validator: validateName,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  hintText: "Name",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: TextFormField(
                controller: passwordController,
                textInputAction: TextInputAction.next,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Password",
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton (
                onPressed:  () => userRegister.signUser(
                    emailController.text, passwordController.text),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: const Size(200, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    elevation: 2),
                child: const Text("Register"))
          ],
        ),
      ]),
    );
  }
}