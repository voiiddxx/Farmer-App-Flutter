import 'package:farmer/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h * 1,
        width: w * 1,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1523741543316-beb7fc7023d8?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y3JvcHN8ZW58MHx8MHx8fDA%3D"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: h * 0.2,
              width: w * 1,
            ),
            Text(
              "Farmers App",
              style: GoogleFonts.dancingScript(
                  color: const Color.fromARGB(255, 52, 52, 52),
                  fontWeight: FontWeight.w900,
                  fontSize: h * 0.04),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Customize livings by checking your crops conditions with just one click",
                style: GoogleFonts.workSans(
                    color: const Color.fromARGB(255, 55, 55, 55),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const Expanded(child: SizedBox()),
            Container(
              height: h * 0.075,
              width: w * 0.9,
              decoration: BoxDecoration(
                color: const Color.fromARGB(188, 81, 81, 81),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesNames.homeScreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get Started",
                            style: GoogleFonts.workSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                          Text(
                            "Explore now and check conditions",
                            style: GoogleFonts.workSans(
                                color: const Color.fromARGB(255, 200, 200, 200),
                                fontWeight: FontWeight.w300,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      Container(
                        height: h * 0.06,
                        width: w * 0.15,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "🍀",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
