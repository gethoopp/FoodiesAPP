import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit/screens/bootom.dart';
import 'package:habit/screens/detaill/snacks.dart';
import '../../controller/getcontroller.dart';


class FirstHome extends StatelessWidget {
  const FirstHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controlTab pads = Get.put(controlTab());
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 100),
          child: RichText(
              text: TextSpan(
                  text: "Delicious\n",
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  children: [
                TextSpan(
                    text: "Food for you",
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ])),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: SizedBox(
            width: 250,
            child: SearchBar(
                onTap: () {
                 
                },
                hintText: "Search",
                leading: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ))),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TabBar(
          controller: pads.controller,
          tabs: pads.aTabs,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.red,
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.red,
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: TabBarView(
            controller: pads.controller,
            children: const [
              Snacks(),
              Center(
                child: Text("Drinks"),
              ),
              Center(
                child: Text("Snacks"),
              ),
              Center(child: CircularProgressIndicator()),
            ],
          ),
        ),
        const SizedBox(height: 55, child: BottomNav())
      ],
    ));
  }
}
