import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/bar.dart';




void main() {
  runApp(const OurQuizzApp());
}

class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bar(),
    );
  }
}
// assest/images