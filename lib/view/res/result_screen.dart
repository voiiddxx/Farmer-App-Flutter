import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final dynamic resData;
  const ResultScreen({super.key, this.resData});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.resData),
      ),
    );
  }
}
