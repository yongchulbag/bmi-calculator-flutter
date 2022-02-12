import 'package:flutter/material.dart';

class Primary_Card extends StatelessWidget {
  Primary_Card({@required this.selected_color, this.inside_card});

  final Color selected_color;
  final Widget inside_card;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: inside_card,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: selected_color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
