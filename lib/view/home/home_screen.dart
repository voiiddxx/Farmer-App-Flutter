import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: h * 1,
      width: w * 1,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: h * 0.3,
            width: double.infinity,
            color: const Color.fromARGB(255, 174, 255, 178),
            child: Column(
              children: [
                Container(
                  height: h * 0.15,
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 20, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello Farmers",
                              style: GoogleFonts.poppins(
                                  color: const Color.fromARGB(255, 61, 61, 61),
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Sunday 12 Jan , 2024",
                              style: GoogleFonts.poppins(
                                  color:
                                      const Color.fromARGB(255, 118, 118, 118),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Center(
                            child: Icon(
                              Icons.notifications_none,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
