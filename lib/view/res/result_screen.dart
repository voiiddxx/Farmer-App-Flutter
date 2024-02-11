import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatefulWidget {
  final dynamic resData;
  const ResultScreen({super.key, this.resData});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    debugPrint(widget.resData.toString());
    debugPrint(widget.resData['image']['width'].toString());
    debugPrint(widget.resData["predictions"][0]["class"]);
    return Scaffold(
        body: Center(
      child: Text(widget.resData.toString()),
    ));
  }
}
