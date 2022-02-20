import 'package:bmi_calculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'primary_card.dart';
import 'inside_card.dart';

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
  int user_Height=170;

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
                          Slider(value: user_Height.toDouble(), min:130.0, max: 220.0, activeColor: Color(0XFFEB1555), inactiveColor: Color(0XFF8D8E98),onChanged: (double changed_Value) {setState(() {
                            user_Height=changed_Value.round();
                          });})
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
                  child: Primary_Card(selected_color: activatedCardColor),
                ),
                Expanded(
                  child: Primary_Card(selected_color: activatedCardColor),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Color(0XFFEB1555),
              height: 80,
              width: double.infinity,
            ),
          ],
        ));
  }
}
