import 'package:flutter/material.dart';

class ReUsableCode extends StatelessWidget {
  const ReUsableCode({required this.colour,required this.cardChild,required this.onPress});

  final Color colour;
  final Widget cardChild;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}