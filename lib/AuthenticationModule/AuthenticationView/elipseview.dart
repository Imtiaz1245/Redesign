import 'package:flutter/material.dart';
import 'package:untitled2/colorsandstrings/colors.dart';
class ElipseView extends StatelessWidget {
  final height,width,topleftBorder,toprightBorder,begin,firstcolor,secondcolor,bottomright,bottomleft;

  const ElipseView({Key? key, this.height, this.width, this.topleftBorder, this.toprightBorder, this.begin, this.firstcolor, this.secondcolor, this.bottomright, this.bottomleft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
         Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(topleftBorder),topRight: Radius.circular(toprightBorder),
    bottomRight: Radius.circular(bottomright),bottomLeft:  Radius.circular(bottomleft)),
    gradient: LinearGradient(
    colors: [
      firstcolor,
      secondcolor,
    ],
      begin: begin,
    )
    ),
    );
  }
}
