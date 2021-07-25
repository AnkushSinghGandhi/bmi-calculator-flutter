import 'package:flutter/material.dart';

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
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),

        )
      ],
    );
  }
}

