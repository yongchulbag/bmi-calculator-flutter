import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'primary_card.dart';
import 'inside_card.dart';

const Color activatedCardColor = Color(0XFF1D1E33);
const Color inactivatedCardColor = Color(0XFF111328);
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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: Primary_Card(
                      selected_color: selectedGender == Gender.male
                          ? activatedCardColor
                          : inactivatedCardColor,
                      inside_card: Icon_and_name(
                        icon_select: FontAwesomeIcons.mars,
                        icon_name: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: Primary_Card(
                      selected_color: selectedGender == Gender.female
                          ? activatedCardColor
                          : inactivatedCardColor,
                      inside_card: Icon_and_name(
                        icon_select: FontAwesomeIcons.venus,
                        icon_name: 'FEMALE',
                      ),
                    ),
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
                  child: Primary_Card(selected_color: activatedCardColor),
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
