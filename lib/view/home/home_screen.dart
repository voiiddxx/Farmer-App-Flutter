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
            height: h * 0.26,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 174, 255, 178),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.15,
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 25),
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
                Container(
                  height: h * 0.065,
                  width: w * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.search,
                              color: Color.fromARGB(255, 72, 72, 72),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Search Crops",
                              style: GoogleFonts.workSans(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.mic,
                          color: Color.fromARGB(255, 29, 29, 29),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
