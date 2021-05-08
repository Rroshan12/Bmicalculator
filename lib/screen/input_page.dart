import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/reusablecontainer.dart';
import '../constant.dart';
enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children :<Widget>[
          Row(
            children: <Widget> [
              Expanded(
                child: ReusableCards( onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                    color: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour),
              ),
              Expanded(
                child: ReusableCards(color:Color(0xff1d1e33)),
              ),

      ]
          ),
          Expanded(
            child: ReusableCards(color:Color(0xff1d1e33)
            ),
          ),
          Row(
              children: <Widget> [
                Expanded(
                  child: ReusableCards(color:Color(0xff1d1e33)),
                ),
                Expanded(
                  child: ReusableCards(color:Color(0xff1d1e33)),
                ),

              ]
          ),
          Container(
          child: Center(
            child: Text(
            'Calculate',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),

            ),
          ),

            height:kBottomContainerHeight,
            width: double.infinity,
            margin:EdgeInsets.only(top:10),
    color: Color(0xffeb1555),

    ),
            




        ],

      ),

    );
  }
}

