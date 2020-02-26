import 'package:bmi_calculator/buttom_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultInterpretation;
  final String resultText;
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultInterpretation,
      @required this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: Center(
                child: Text(
                  "Your Results",
                  style: ktitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kactiveCardcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    //'Normal',
                    resultText.toUpperCase(),
                    style: kresultTextStyle,
                  ),
                  Text(
                    //'18.3',
                    bmiResult,
                    style: kbmiTextStyle,
                  ),
                  Text(
                    //'Your BMI is Low you should eat More',
                    resultInterpretation,
                    style: kbodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "Re-Calculate")
        ],
      ),
    );
  }
}
