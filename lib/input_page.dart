import 'package:flutter/material.dart';
import 'results_page.dart';
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late int slidervalue=100;
  late int slidervalue1=30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Colors.purple[800],
      ),
      body: Column(

        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 72,
                            child: Text(
                              '<18',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 72,
                            backgroundColor: Colors.green,

                            child: Text(
                              '18-24',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),    Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Center(
                          child: CircleAvatar(
                            radius: 72,
                            backgroundColor: Colors.red,
                            child: Text(
                              '24<',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
          //--------------------------- HEIGHT WIDGET-----------------------
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HEIGHT',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ) ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              slidervalue.toString(),

                              style: TextStyle(
                                fontSize: 70,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                            Text('cm',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),)
                          ],
                        ),
                        Slider(
                          value: slidervalue.toDouble(),
                          min: 100,
                          max: 300,
                          onChanged: (value) {
                            setState(() {
                              slidervalue = value.toInt();
                            });
                          },
                          inactiveColor: Colors.white,
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // -----------------------WEIGHT WIDGET-----------------------------

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ) ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              slidervalue1.toString(),

                              style: TextStyle(
                                fontSize: 70,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),),
                            Text('KG',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),)
                          ],
                        ),
                        Slider(
                          value: slidervalue1.toDouble(),
                          min: 0,
                          max: 300,
                          onChanged: (value) {
                            setState(() {
                              slidervalue1 = value.toInt();
                            });
                          },
                          inactiveColor: Colors.white,
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[900],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
    Navigator.push(
        context,
          MaterialPageRoute(builder: (context)=>ResultPage(slidervalue1,slidervalue)),
    );
    },
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Text('CALCULATE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              height: 80,width: double.infinity,
            ),
          )
        ],
      ),
    );
  }
}

