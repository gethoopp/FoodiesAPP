import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:habit/controller/bottomcontroller.dart';
import 'package:habit/screens/Home/favorite.dart';
import 'package:habit/screens/Home/history.dart';
import 'package:habit/screens/Home/profile.dart';



class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomC bottomC = Get.put(BottomC());

    final List<Widget> listPage = [
       const Profile(),
       const History(),
       const Favorite()
    ];

    return Scaffold(
        body: Obx(() => listPage[bottomC.currentIndex.value]),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.red,
              backgroundColor: Colors.white54,
              currentIndex: bottomC.currentIndex.value,
              onTap: bottomC.changeIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.timelapse_sharp), label: "History"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.thumb_up_alt_sharp), label: "Favorite")
              ]),
        ));
  }
}
