import 'package:bmicalculator/input_page.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  String insights;
  String bmi;
  String results;
  ResultsPage(
      {@required this.insights, @required this.bmi, @required this.results});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colorSelected: inactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '$results',
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$bmi',
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '$insights',
                    style: TextStyle(fontSize: 22.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              padding: EdgeInsets.only(bottom: 10.0),
              color: Color(0x92EB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 55.0,
            ),
          ),
        ],
      ),
    );
  }
}
