import 'package:farmer/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic data = "wheat";

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: h * 1,
      width: w * 1,
      color: const Color.fromARGB(255, 240, 240, 240),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "available crops",
              style: GoogleFonts.poppins(
                  color: const Color.fromARGB(255, 71, 71, 71),
                  fontWeight: FontWeight.w300,
                  fontSize: 18),
            ),
          ),
          Container(
            height: h * 0.67,
            margin: const EdgeInsets.only(left: 15, right: 20, top: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        data = "Wheat";
                      });
                      Navigator.pushNamed(
                          context, RoutesNames.imageUploadScreen,
                          arguments: data);
                    },
                    child: Container(
                      height: h * 0.3,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: h * 0.2,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://images.unsplash.com/photo-1529677987586-cb08849925dd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTN8MjU3NDAxM3x8ZW58MHx8fHx8&w=1000&q=80"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Wheat Crops",
                                      style: GoogleFonts.manrope(
                                          color: const Color.fromARGB(
                                              255, 0, 127, 4),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Conditions of your wheat crops",
                                      style: GoogleFonts.manrope(
                                          color: const Color.fromARGB(
                                              255, 49, 49, 49),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 160, 255, 163),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_right,
                                      color: Color.fromARGB(255, 50, 50, 50),
                                      size: 40,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ////////////////////////////////////////////////////////////////
                  ///
                  InkWell(
                    onTap: () {
                      setState(() {
                        data = "Rice";
                      });
                      Navigator.pushNamed(
                          context, RoutesNames.imageUploadScreen,
                          arguments: data);
                    },
                    child: Container(
                      height: h * 0.3,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: h * 0.2,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://foodtank.com/wp-content/uploads/2017/05/Food-Tank-SRI-Rice.jpg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Rice Crops",
                                      style: GoogleFonts.manrope(
                                          color: const Color.fromARGB(
                                              255, 0, 127, 4),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Conditions of your wheat crops",
                                      style: GoogleFonts.manrope(
                                          color: const Color.fromARGB(
                                              255, 49, 49, 49),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 160, 255, 163),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_right,
                                      color: Color.fromARGB(255, 50, 50, 50),
                                      size: 40,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  /////////////////////////////////////
                  ///
                  ///
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        data = "Wheat";
                      });
                      Navigator.pushNamed(
                          context, RoutesNames.imageUploadScreen,
                          arguments: data);
                    },
                    child: Container(
                      height: h * 0.3,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: h * 0.2,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: NetworkImage(
                                        "https://media.istockphoto.com/id/1308606393/photo/corn-field-in-agricultural-garden-and-light-shines-sunset.jpg?s=612x612&w=0&k=20&c=N6SJj8zZwZLQMLrDcFa6KtfTxQhhS9n3dpDhDT2hbMo="),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Other Crops",
                                      style: GoogleFonts.manrope(
                                          color: const Color.fromARGB(
                                              255, 0, 127, 4),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      "Conditions of your wheat crops",
                                      style: GoogleFonts.manrope(
                                          color: const Color.fromARGB(
                                              255, 49, 49, 49),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 160, 255, 163),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_right,
                                      color: Color.fromARGB(255, 50, 50, 50),
                                      size: 40,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
