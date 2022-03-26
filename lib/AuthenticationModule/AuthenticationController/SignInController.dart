import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationView/materialButtonView.dart';
import 'package:untitled2/bidDetail/bidDetailController/bidDetailController.dart';
import 'package:untitled2/colorsandstrings/colors.dart';
import 'package:untitled2/colorsandstrings/stringstxt.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationView/elipseview.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationView/textFieldView.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationController/forgetPasswordController.dart';
class SignInController extends StatefulWidget {
  const SignInController({Key? key}) : super(key: key);

  @override
  State<SignInController> createState() => _SignInControllerState();
}

class _SignInControllerState extends State<SignInController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding:  EdgeInsets.only(top:90),
              child: Column(
                children: [

                  Text(workers,style: TextStyle(color: defaltColor,fontSize: 25),),
                  Text(REDESIGN,style: TextStyle(color: splashBackGroundColor,fontWeight: FontWeight.bold,
                      fontSize: 30),)

                ],
              ),
            ),
          ),
Padding(
  padding:  EdgeInsets.only(top: 200,bottom: 30),
  child:   Align(

    alignment: Alignment.centerRight,

    child:  ElipseView(
      height: 400.0,
      width: 40.0,
      topleftBorder: 100.0,
      toprightBorder: 0.0,
      bottomright: 0.0,
      bottomleft: 100.0,
      begin: Alignment.centerLeft,

      firstcolor:defaltColor,
    secondcolor:  Colors.white
    )
  ),
),
Padding(
  padding:  EdgeInsets.only(top: 0.0),
  child:   Align(



    alignment: Alignment.bottomLeft,



    child:  ElipseView(

      height: 300.0,

      width: 80.0,

      toprightBorder: 100.0,

      topleftBorder: 0.0,

      bottomleft: 0.0,

      bottomright: 10.0,

      begin: Alignment.bottomLeft,
      secondcolor: Color(0xffeab7df),

      firstcolor: Color(0x16F1ECF3),

    )

  ),
),
          Padding(
            padding:  EdgeInsets.only(top: 0.0,bottom: 35),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SingleChildScrollView(
                child: Container(
                  height: 550,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1
                      )
                    ],

                  ),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 30.0,vertical: 65),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Text(Sign_In,style: TextStyle(color: defaltColor,fontSize: 20),),
  Text(Sign_In_to_conti,style: TextStyle(color: splashBackGroundColor,fontSize: 15),),
  SizedBox(height:60,),
  TextFieldView(
    hint: Email,
    prefixicon:Icon(Icons.email,color: defaltColor, ),
    fieldwidth: 250.0,
    fieldheight: 50.0,
  ),
  SizedBox(height: 20,),
  TextFieldView(
    hint: Password,
    fieldwidth: 250.0,
    fieldheight: 50.0,
    ispasword: true,
    prefixicon:Icon(Icons.lock,color: defaltColor, ),
  ),
  SizedBox(height: 5,),
  Container(
    height: 35,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordController(),));
        },
        child: Text(forgotpassword,style: TextStyle(color: Colors.black),))
      ],
    ),
  ),
  SizedBox(height: 25),
  MaterialButtonView(
    btnOnPress: (){

      Navigator.push(context, MaterialPageRoute(builder: (context) => BidDetailController(),));
    },
    btnColor: defaltColor,
    btnText: Sign_In,
    btnHeight: 50.0,
    btnWidth: 250.0,
    btnTextColor: Colors.white,
    bordercolor: Colors.white,
    btnShapeBorder: 10.0,
    borderRadius: 0.0,

  ),

  SizedBox(height: 30,),
  MaterialButtonView(
    btnOnPress: (){},
    btnColor: Colors.white,
    btnText: Sign_Up,
    btnHeight: 50.0,
    btnWidth: 250.0,
    btnShapeBorder:10.0,
    btnTextColor: defaltColor,
    bordercolor: defaltColor,
    borderRadius: 10.0,

  ),

],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
