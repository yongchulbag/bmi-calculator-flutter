import 'package:bmi_calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'primary_card.dart';
import 'icon_inside_card.dart';
import 'result_page.dart';
import 'bottom_red_button.dart';
import 'calculate_result.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int user_Height = 170;
  int user_Weight = 50;
  int user_Age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
        SizedBox(
        height: 10,
      ),
      Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Primary_Card(
                  selected_color: selectedGender == Gender.male
                      ? activatedCardColor
                      : inactivatedCardColor,
                  inside_card: Icon_and_name(
                    icon_select: FontAwesomeIcons.mars,
                    icon_name: 'MALE',
                  ),
                  onClick: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: Primary_Card(
                  selected_color: selectedGender == Gender.female
                      ? activatedCardColor
                      : inactivatedCardColor,
                  inside_card: Icon_and_name(
                    icon_select: FontAwesomeIcons.venus,
                    icon_name: 'FEMALE',
                  ),
                  onClick: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )),
      Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Primary_Card(
                    selected_color: activatedCardColor,
                    inside_card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: primary_CardTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(user_Height.toString(),
                                style: primary_LargeTextStyle),
                            Text('cm', style: primary_CardTextStyle),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbColor: Color(0XFFEB1555),
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0XFF8D8E98),
                            overlayColor: Color(0X1FEB1555),
                            thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 15.0),
                            overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                              value: user_Height.toDouble(),
                              min: 130.0,
                              max: 220.0,
                              onChanged: (double changed_Value) {
                                setState(() {
                                  user_Height = changed_Value.round();
                                });
                              }),
                        )
                      ],
                    )),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )),
      Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Primary_Card(
                  selected_color: activatedCardColor,
                  inside_card: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: primary_CardTextStyle,
                      ),
                      Text(
                        user_Weight.toString(),
                        style: primary_LargeTextStyle,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    user_Weight--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    user_Weight++;
                                  });
                                }),
                          ]),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Primary_Card(
                  selected_color: activatedCardColor,
                  inside_card: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: primary_CardTextStyle,
                      ),
                      Text(
                        user_Age.toString(),
                        style: primary_LargeTextStyle,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    user_Age--;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    user_Age++;
                                  });
                                }),
                          ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )),
      SizedBox(
        height: 10,
      ),
      BottomRedButton(
        buttonTitle: 'CALCULATE THIS!',
        onClick: () {
          CalculateResult calc =
          CalculateResult(height: user_Height, weight: user_Weight);
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context)
          =>
              ResultPage(
                bmi_number: calc.ShowBMI(),
                bmi_evaluate: calc.EvaluateBMI(),
                bmi_advicesentence: calc.AdviceSentenceForBMI(),
              ),
          ),
          );
        },
      ),
      ],
    ),
  );
}}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: Color(0XFF4C4F5E),
    );
  }
}
