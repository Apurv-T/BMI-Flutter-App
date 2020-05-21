import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colorSelected: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xFF8D8E98)),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colorSelected: Color(0xFF1D1E33),
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xFF8D8E98)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colorSelected: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(colorSelected: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(colorSelected: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colorSelected, this.cardChild});
  final Color colorSelected;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xFF1D1E33),
      ),
      margin: EdgeInsets.all(15.0),
      child: cardChild,
    );
  }
}
