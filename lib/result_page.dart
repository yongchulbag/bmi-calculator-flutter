import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'primary_card.dart';
import 'bottom_red_button.dart';

class ResultPage extends StatelessWidget {

  ResultPage({this.bmi_number, this.bmi_evaluate, this.bmi_advicesentence});

  final String bmi_number;
  final String bmi_evaluate;
  final String bmi_advicesentence;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding:EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text('YOUR RESULT',
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              ),
            ),
            Expanded(
              flex: 6,
              child: Primary_Card(
                selected_color: activatedCardColor,
                inside_card: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmi_evaluate.toUpperCase(),
                      style: TextStyle(
                        color: Color(0XFF24D876),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmi_number,
                      style:
                          TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmi_advicesentence,
                      style: TextStyle(fontSize: 22),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomRedButton(
              buttonTitle: 'GO BACK TO PREVIOUS',
              onClick: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
