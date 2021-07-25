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
          title: Center(child: Text('BMI CALCULATOR')),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ReusableCard(colour: Color(0xFF1D1E33),),
                  ReusableCard(colour: Color(0xFF1D1E33),),
                ],
              ),
            ),
            ReusableCard(colour: Color(0xFF1D1E33),),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(colour: Color(0xFF1D1E33),),
                  ReusableCard(colour: Color(0xFF1D1E33),),
                ],
              ),
            ),
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(6),
        ),
        margin: EdgeInsets.all(16),
      ),
    );
  }
}
