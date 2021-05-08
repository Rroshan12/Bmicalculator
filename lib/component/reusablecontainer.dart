import  'package:flutter/material.dart';
class ReusableCards extends StatelessWidget {
  ReusableCards({ @required this.color,this.cardChild,this.onPress});
  final Color color;
  final Widget cardChild;
  final Function  onPress;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: onPress,

      child: Container(
        child:cardChild,

        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),

        ),

        height:170.0,
      ),
    );
  }
}
