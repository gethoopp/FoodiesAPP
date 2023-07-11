import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Tabcontrol extends GetxController with GetSingleTickerProviderStateMixin {
  final List <Tab> tTabs = <Tab>[
     Tab(
      child: Text('Login',style: GoogleFonts.abel(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      
      ),),
      
    ),
    Tab(
      child: Text('SignUp',style: GoogleFonts.abel(
        fontSize:15,
        fontWeight: FontWeight.bold,
       
      )))
  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(length: tTabs.length, vsync: this);
  }

  void onTabChange() {
    update();
  }
  
  @override
  void onClose(){
    controller.dispose();
    super.onClose();
  }
}

// ignore: camel_case_types
class controlTab extends GetxController with GetSingleTickerProviderStateMixin {
  final List <Tab> aTabs = <Tab>[
     Tab(
      child: Text('Foods',style: GoogleFonts.abel(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      
      ),),
      
    ),
    Tab(
      child: Text('Drinks',style: GoogleFonts.abel(
        fontSize:15,
        fontWeight: FontWeight.bold,
       
      ))),
     
     Tab(
      child: Text('Snacks',style: GoogleFonts.abel(
        fontSize:15,
        fontWeight: FontWeight.bold,
       
      ))),


      Tab(
      child: Text('Sauce',style: GoogleFonts.abel(
        fontSize:15,
        fontWeight: FontWeight.bold,
       
      ))),

  ];

  late TabController controller;

  @override
  void onInit() {
    super.onInit();
    controller = TabController(length: aTabs.length, vsync: this);
  }

  void onTabChange() {
    update();
  }
  
  @override
  void onClose(){
    controller.dispose();
    super.onClose();
  }
}
