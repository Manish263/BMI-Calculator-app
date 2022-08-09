import 'package:flutter/material.dart';
import 'package:bmi_calculator/reusable_Card.dart';
import 'Input_main_Page.dart';

const titleTextStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold);

class ResultPage extends StatelessWidget {
  ResultPage({required this.interpretation,required this.bmiresult,required this.resultText});

  final String interpretation;
  final String resultText;
  final String bmiresult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bmi calculator'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
            child: Text(
              'Your Result',
              style: titleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReUsableCode(
              onPress: () {},
              colour: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmiresult.toUpperCase(),
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22.0),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
