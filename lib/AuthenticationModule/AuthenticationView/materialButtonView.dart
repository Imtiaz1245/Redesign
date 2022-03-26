import 'package:flutter/material.dart';
import 'package:untitled2/colorsandstrings/stringstxt.dart';
class MaterialButtonView extends StatelessWidget {
  final btnHeight,btnWidth,btnShapeBorder,btnColor,btnText,btnTextColor,btnOnPress,btnFontSize,borderRadius,bordercolor;
   MaterialButtonView({Key? key, this.btnHeight, this.btnWidth, this.btnShapeBorder, this.btnColor, this.btnText, this.btnTextColor=Colors.white, this.btnOnPress, this.btnFontSize, this.borderRadius, this.bordercolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:btnHeight ,
      width: btnWidth,
      decoration: BoxDecoration(
        border: Border.all(color:bordercolor ),
        borderRadius: BorderRadius.circular(borderRadius)
      ),
      child: MaterialButton(onPressed: btnOnPress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(btnShapeBorder)) ,
      color: btnColor,
      child: Text(btnText,style: TextStyle(color: btnTextColor,fontSize: btnFontSize,),),),
    );
  }
}
