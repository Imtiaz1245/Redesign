import 'package:flutter/material.dart';
import 'package:untitled2/AuthenticationModule/AuthenticationController/SignInController.dart';
import 'package:untitled2/colorsandstrings/colors.dart';
import 'package:untitled2/colorsandstrings/stringstxt.dart';
class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
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

Align(
    alignment: Alignment.center,
    child: Padding(
      padding:  EdgeInsets.only(bottom: 300.0,left: 65,right: 65),
      child: Text(enjoy_free_leads,style: TextStyle(color: splashBackGroundColor,fontSize: 20,letterSpacing: 1.0,),),
    )),

Align(
    alignment: Alignment.bottomCenter,
    child: Image.asset("assets/images/getstartedbackimage.jpg",fit: BoxFit.fitWidth,)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:  EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 150,
                
                child: MaterialButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context) => SignInController(),));
                },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius
                  .circular(10)),
                  color: defaltColor,
                child: Text(Get_Started,style: TextStyle(color: Colors.white,fontSize: 15),),),
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding:  EdgeInsets.only(top: 50),
                child: Image.asset("assets/images/getstartedpeople.png",),
              )),
],
      ),
    );
  }
}
