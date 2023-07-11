import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animations/animations.dart';
import 'detailsnacks1.dart';

class Snacks extends StatelessWidget {
  const Snacks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      children: [
        OpenContainer(
            closedColor: Colors.transparent,
            closedElevation: 0,
            openElevation: 0,
            openColor: Colors.white,
            openShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            transitionType: ContainerTransitionType.fadeThrough,
            closedBuilder: (context, action) => Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 200,
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(207, 255, 244, 244)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 40),
                        child: RichText(
                          text: TextSpan(
                              text: "Nasi Pecel",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "\n Rp. 10.000",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange))
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 70, left: 40),
                        child: ClipOval(
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Image.asset(
                              'Assets/images/food1.png',
                              scale: 5,
                              colorBlendMode: BlendMode.dst,
                              color: Colors.white24,
                            ),
                          ),
                        )),
                  ],
                ),
            openBuilder: (context, action) => const Snacks1()),
        const SizedBox(
          width: 20,
        ),
        OpenContainer(
            transitionType: ContainerTransitionType.fadeThrough,
            closedColor: Colors.transparent,
            closedElevation: 0,
            closedBuilder: (context, action) => Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 200,
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(207, 255, 244, 244)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 40),
                        child: RichText(
                          text: TextSpan(
                              text: "Nasi Campur",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "\n Rp. 12.000",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange))
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 70, left: 40),
                        child: ClipOval(
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Image.asset(
                              'Assets/images/food1.png',
                              scale: 4,
                              colorBlendMode: BlendMode.dst,
                              color: Colors.white24,
                            ),
                          ),
                        )),
                  ],
                ),
            openBuilder: (context, action) => const Column()),
        const SizedBox(
          width: 20,
        ),
        OpenContainer(
            closedElevation: 0,
            closedColor: Colors.transparent,
            closedBuilder: (context, action) => Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 200,
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(207, 255, 244, 244)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 40),
                        child: RichText(
                          text: TextSpan(
                              text: "Salad Sayur",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: "\n Rp. 20.000",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange))
                              ]),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 70, left: 40),
                        child: ClipOval(
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Image.asset(
                              'Assets/images/food1.png',
                              scale: 5,
                              colorBlendMode: BlendMode.dst,
                              color: Colors.white24,
                            ),
                          ),
                        )),
                  ],
                ),
            openBuilder: (context, action) => const Column()),
      ],
    );
  }
}
