import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:habit/controller/getcontroller.dart';
import 'package:habit/screens/registerpage.dart';
import 'package:lottie/lottie.dart';
import 'loginpage.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final Tabcontrol _tabs = Get.put(Tabcontrol());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      color: Colors.white60),
                ),
                Center(
                  heightFactor: 1.5,
                  child: Lottie.asset("Assets/images/bakkery.json")),
              ],
            ),
            TabBar(
                tabs: _tabs.tTabs,
                controller: _tabs.controller,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.red,
                unselectedLabelColor: Colors.black87),
            Expanded(
              child: TabBarView(
                controller: _tabs.controller,
                children:  [
                  const LoginUser(),
                  RegisterUSer(),
                ],
              ),
            )
          ],
        ));
  }
}

String? validateName(String? validator) {
  if (validator == null) {
    return "Please enter a valid name!!";
  } else {
    return null;
  }
}

String? validatePass(String? validatorPass) {
  if (validatorPass == null) {
    return "Please enter a valid password!!";
  } else {
    return null;
  }
}
