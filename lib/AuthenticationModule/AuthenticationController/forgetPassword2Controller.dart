import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationView/materialButtonView.dart';
import 'package:untitled2/colorsandstrings/colors.dart';
import 'package:untitled2/colorsandstrings/stringstxt.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationView/elipseview.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationView/textFieldView.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationController/forgetPasswordController.dart';
class ForgetPassword2Controller extends StatefulWidget {
  const ForgetPassword2Controller({Key? key}) : super(key: key);

  @override
  State<ForgetPassword2Controller> createState() => _ForgetPassword2ControllerState();
}

class _ForgetPassword2ControllerState extends State<ForgetPassword2Controller> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return  Scaffold(

      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child:  Padding(
              padding:  EdgeInsets.only(top: 60),
              child: ListTile(leading: Padding(
                padding:  EdgeInsets.only(top: 0.0),
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
                        Center(child: Text(Enter_your_Email)),
                        SizedBox(height: 5,),
                        Center(
                          child: Text(forgotpassword,style: TextStyle(
                            color: defaltColor,fontSize: 25
                          ),),
                        ),
                        SizedBox(height: 50,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFieldView(
                              fieldheight: 50.0,
                              fieldwidth: 280.0,
                              hint: enterEmailAddress,
                              prefixicon: Icon(Icons.email_outlined,color: defaltColor,),
                            ),

                            SizedBox(height: 40,),

                            Center(
                              child: MaterialButtonView(
                                btnOnPress: (){
                                },
                                btnColor: defaltColor,
                                btnText: send,
                                btnHeight: 50.0,
                                btnWidth: 280.0,
                                btnFontSize: 20.0,
                                btnTextColor: Colors.white,
                                bordercolor: Colors.white,
                                btnShapeBorder: 10.0,
                                borderRadius: 0.0,

                              ),
                            ),
                          ],
                        )
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
