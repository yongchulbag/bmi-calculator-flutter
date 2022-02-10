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
              height: 20,
            ),
            Expanded(
                child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Primary_Card(selected_color : Color(0XFF1D1E33)),
                ),
                Expanded(
                  child: Primary_Card(selected_color : Color(0XFF1D1E33)),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Primary_Card(selected_color : Color(0XFF1D1E33)),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Primary_Card(selected_color : Color(0XFF1D1E33)),
                ),
                Expanded(
                  child: Primary_Card(selected_color : Color(0XFF1D1E33)),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            )),
            SizedBox(
              height: 20,
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
