import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'gender_icon.dart';

const bottomContainerHeight = 50.0;
const activeCardColor = Color(0xFF111328);
const inactiveCardColor = Color(0xFF1D1E33); 
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor; 


void updateColor(int gender){
  if(gender == 1){
    if(maleCardColor == inactiveCardColor){
      maleCardColor = activeCardColor;
      femaleCardColor = inactiveCardColor;
    }
    else{
      maleCardColor = inactiveCardColor;
    }
  }
  else{
    if(femaleCardColor == inactiveCardColor){
      femaleCardColor = activeCardColor;
      maleCardColor = inactiveCardColor;
    }
    else{
      femaleCardColor = inactiveCardColor;
    } 
  }
}

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
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(1);
                        });
                      },
                      child: ReusableCard(
                        colour: maleCardColor, 
                        cardChild: GenderIcon(gender: 'MALE', icon: FontAwesomeIcons.mars,),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(2);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: GenderIcon(gender: 'FEMALE', icon: FontAwesomeIcons.venus,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColor, 
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              height: bottomContainerHeight,
              width: double.infinity,
              child: Center(
                child: Text('CALCULATE YOUR BMI'),
              ),
            )
          ],
        ));
  }
}