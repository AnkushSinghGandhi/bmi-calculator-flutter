import 'package:flutter/material.dart';
import 'constants.dart';
class BottomContainerWidget extends StatelessWidget {

  BottomContainerWidget({required this.buttontitle, this.ontap});

  final Function ()? ontap;
  final String buttontitle; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
        width: double.infinity,
        child: Center(
          child: Text(buttontitle),
        ),
      ),
    );
  }
}