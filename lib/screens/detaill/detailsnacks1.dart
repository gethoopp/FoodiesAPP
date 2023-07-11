import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';

class Snacks1 extends StatefulWidget {
  const Snacks1({super.key});

  @override
  State<Snacks1> createState() => _Snacks1State();
}

class _Snacks1State extends State<Snacks1> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 100,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20,
                )),
            const SizedBox(
              width: 190,
            ),
            IconButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: const Icon(
                  Icons.add_business_rounded,
                  color: Colors.black,
                  size: 20,
                )),
          ],
        ),
      ),
      Container(
        height: 300,
        width: 400,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25)),
            image: DecorationImage(
              image: AssetImage("Assets/images/food11.png"),
              fit: BoxFit.cover,
            )),
      ),
      const SizedBox(
        height: 20,
      ),
      RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Nasi Pecel",
              style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                    text: "\nRp. 15.000",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange))
              ])),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: "Delivery info",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                      text:
                          "\npengantaran dilakukan antara jam 10.00 - 20.00, \npada hari yang sama dengan pemesanan anda \n\n",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black))
                ])),
          ],
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: "Kebijakan Pengembalian",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                      text:
                          "\nKami tidak menerima pengembalian produk, \nkecuali produk yang anda terima tidak sesuai \ndengan pesanan anda",
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black))
                ])),
          ],
        ),
      ),
      const SizedBox(
        height: 10,),

       Flexible(
         child: SizedBox(
          height: 50,
          width: 190,
          child: ElevatedButton(
          onPressed: ()async {
             await EasyLoading.showSuccess("Success Add to Cart",duration: const Duration(seconds: 2));
              
             
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          child: const Text(
            "Add to Cart",
            style: TextStyle(color: Colors.white),
          ),
             ),
             ),
       ),
      
    ]);
  }
}
