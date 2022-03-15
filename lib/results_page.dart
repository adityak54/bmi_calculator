import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'formula.dart';
class ResultPage extends StatefulWidget {
int weight;
int height;
ResultPage(@required this.weight,@required this.height,){}
  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  logic l=logic();
  double bmiResult=0;
  @override
  void initState() {
    bmiResult=l.calculateBMI(widget.height, widget.weight);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
      ),
      body: Center(
        child: Column(
          children: [
            Text('BMI RESULTS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,

            ),),
            Text('${bmiResult.toStringAsFixed(1)}',
            style: TextStyle(
              fontSize: 70,
              color: Colors.blue,
            ),),
          ],
        ),
      ),
    );
  }
}
