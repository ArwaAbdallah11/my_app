import 'package:flutter/material.dart';
import 'whatsapp.dart';
import 'card_screen.dart';
import 'food_screen.dart';

void main() {
  runApp(my_app());
}
class my_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: card_screen(),
    );
  }
}