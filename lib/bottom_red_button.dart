import 'package:flutter/material.dart';

class BottomRedButton extends StatelessWidget {

  BottomRedButton({@required this.buttonTitle, @required this.onClick});

  final String buttonTitle;
  final Function onClick;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: Center(child: Text(buttonTitle,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,))),
        color: Color(0XFFEB1555),
        padding: EdgeInsets.only(bottom: 10),
        height: 80,
        width: double.infinity,
      ),
    );
  }
}