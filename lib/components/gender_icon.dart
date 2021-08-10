import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class GenderIcon extends StatelessWidget {

  GenderIcon({required this.gender, required this.icon});

  final String gender;
  final IconData icon;


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,

        )
      ],
    );
  }
}

