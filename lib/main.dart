import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habit/routes/routes.dart';
import 'controller/logincontroller.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
 Platform.isAndroid? await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDVPrlTrEdum5sh8VSgTZxxR10xCw9gfbk",
      appId: "1:3752012208:android:d75d9357323c3c50ca8e75",
      messagingSenderId: "3752012208",
      projectId: "foodies2-57e85",
    ),
  )
  
  :await Firebase.initializeApp();
  runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final auth = Get.put(authC());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: auth.statusUser,
      builder: (context,snapshot){
         return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          getPages: routesAPP(),
          initialRoute: "/welcome");
      },
    );
  }
}
