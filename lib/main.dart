import 'package:flutter/material.dart';
import 'package:food_app/views/home.dart';

void main() {
  runApp(Foody());
}

class Foody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
