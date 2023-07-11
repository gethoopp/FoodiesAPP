import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(244, 81, 30, 1),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 30),
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: "Food For",
                      style: GoogleFonts.montserrat(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "\neveryone",
                            style: GoogleFonts.montserrat(
                              fontSize: 45,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ])),
            ),
            const SizedBox(),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    "Assets/images/ToyFaces_Tansparent_BG_49.png",
                    height: 500,
                    width: 250,
                  ),
                  
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Opacity(
                    opacity: 0.75,
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Color.fromARGB(255, 252, 74, 20),
                      ),
                      height: 150,
                      width: 450,
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Center(
                    child: TextButton(
                        onPressed: () {
                          Get.offNamed("/LoginPage");
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.white54,
                          fixedSize: const Size(300, 50),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                        )),
                  ),
                ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
