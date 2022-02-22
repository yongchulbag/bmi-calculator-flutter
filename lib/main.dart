import 'package:flutter/material.dart';
import 'input_page.dart';

const primary_CardTextStyle = TextStyle(fontSize: 18, color: Color(0XFF8D8E98));
const primary_LargeTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const Color activatedCardColor = Color(0XFF1D1E33);
const Color inactivatedCardColor = Color(0XFF111328);

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0F0F1E),
        scaffoldBackgroundColor: Color(0xFF0F0F1E),
      ),
      home: InputPage(),
    );
  }
}
