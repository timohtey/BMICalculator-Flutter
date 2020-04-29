import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.cardChild, this.onPressFunction});

  final Color color;
  final Widget cardChild;
  final Function onPressFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressFunction,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
