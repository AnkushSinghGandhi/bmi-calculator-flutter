import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'input_page.dart';
import 'bottom_container_widget.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage(
    {
    required this.interpretation,
    required this.bmiResult,
    required this.resultText
    });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result :',
                style: kTitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 12,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kWeightStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultStyle,
                  ),
                  Text(
                    interpretation,
                  )
                ],
              ),
            ),
          ),
          BottomContainerWidget(
            buttontitle: 'RE-CALCULATE',
            ontap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => InputPage()));
            },
            )
        ],
      ),
    );
  }
}
