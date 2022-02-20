import 'package:flutter/material.dart';

class Primary_Card extends StatelessWidget {
  Primary_Card({@required this.selected_color, this.inside_card, this.onClick});

  final Color selected_color;
  final Widget inside_card;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: inside_card,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: selected_color,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
