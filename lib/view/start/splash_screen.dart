import 'package:flutter/material.dart';

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
      ),
    );
  }
}
