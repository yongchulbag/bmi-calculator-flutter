import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';

class Icon_and_name extends StatelessWidget {
  Icon_and_name({this.icon_select, this.icon_name});

  final IconData icon_select;
  final String icon_name;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon_select,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(icon_name,

            style: primary_CardTextStyle)
      ],
    );
  }
}

