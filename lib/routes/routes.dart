import 'package:get/get.dart';
import '../screens/Home/homescreen.dart';
import '../screens/detaill/snacks.dart';
import '../screens/login.dart';
import '../screens/registerpage.dart';
import '../screens/welcome.dart';
import '../screens/loginpage.dart';


  
 
  routesAPP() => [
     GetPage(name: '/welcome', page: () =>  const WelcomeScreen(),transition: Transition.circularReveal),
     GetPage(name: '/LoginPage', page: () =>  LoginPage(),transition: Transition.circularReveal),
     GetPage(name: '/Login', page: () =>  const LoginUser(),transition: Transition.circularReveal),
     GetPage(name: '/Register', page: () =>  RegisterUSer(),transition: Transition.circularReveal),
     GetPage(name: '/First', page: () =>  const FirstHome(),transition: Transition.leftToRightWithFade),
     GetPage(name:'/snacks', page: () => const Snacks(),transition: Transition.rightToLeftWithFade)
     

  ];
