import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationView/textFieldView.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationView/materialButtonView.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationController/forgetPassword2Controller.dart';
import 'package:untitled2/colorsandstrings/colors.dart';
import 'package:untitled2/colorsandstrings/stringstxt.dart';
class ForgetPasswordController extends StatefulWidget {
  const ForgetPasswordController({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordController> createState() => _ForgetPasswordControllerState();
}

class _ForgetPasswordControllerState extends State<ForgetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70,),
            ListTile(leading: Padding(
              padding:  EdgeInsets.only(top: 15.0),
              child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_rounded,color: defaltColor,)),
            ),
            title: Column(
              children: [
                Text(workers,style: TextStyle(color: defaltColor,fontSize: 20),),
                Text(REDESIGN,style: TextStyle(color: splashBackGroundColor,fontSize: 25,fontWeight: FontWeight.bold),),

              ],
            ),
            trailing: SizedBox(width: 50,),),
         SizedBox(height: 65,),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: 40),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
Text(Forget_Your_Password,style: TextStyle(color: defaltColor,fontSize: 20),),
               SizedBox(height: 45,),
               TextFieldView(
                 fieldheight: 50.0,
                 fieldwidth: MediaQuery.of(context).size.width,
                 hint: enterEmailAddress,
                 prefixicon: Icon(Icons.email_outlined,color: defaltColor,),
               ),
               SizedBox(height: 40,),

               Center(
                 child: MaterialButtonView(
                   btnOnPress: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword2Controller(),));
                   },
                   btnColor: defaltColor,
                   btnText: send,
                   btnHeight: 50.0,
                   btnWidth: MediaQuery.of(context).size.width,
                   btnFontSize: 20.0,
                   btnTextColor: Colors.white,
                   bordercolor: Colors.white,
                   btnShapeBorder: 10.0,
                   borderRadius: 0.0,

                 ),
               ),
             ],
           ),
         )
          ],
        ),
      ),
    );
  }
}
