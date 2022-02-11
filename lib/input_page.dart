import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: Primary_Card(selected_color: Color(0XFF1D1E33)),
                ),
                Expanded(
                  child: Primary_Card(selected_color: Color(0XFF1D1E33)),
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
                  child: Primary_Card(selected_color: Color(0XFF1D1E33)),
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
                  child: Primary_Card(selected_color: Color(0XFF1D1E33)),
                ),
                Expanded(
                  child: Primary_Card(selected_color: Color(0XFF1D1E33)),
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

class Primary_Card extends StatelessWidget {
  Primary_Card({@required this.selected_color});

  final Color selected_color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: selected_color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
