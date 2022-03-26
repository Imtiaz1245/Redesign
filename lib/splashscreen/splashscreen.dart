import 'package:flutter/material.dart';
import 'package:untitled2/colorsandstrings/colors.dart';
import 'package:untitled2/colorsandstrings/stringstxt.dart';
import 'package:untitled2/splashscreen/getstarted.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: splashBackGroundColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(workers,style: TextStyle(fontSize: 35,color: Color(0xFFd664be)),),
                  Text(REDESIGN,style: TextStyle(fontSize: 40,color: Colors.white),),

                ],

              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:  EdgeInsets.symmetric(vertical: 15.0),
                child: Text.rich(
                  TextSpan(
                      text: A_product_of,style: TextStyle(color: Colors.white),
                      children:[
                        TextSpan(text: BuiltinSoft,style: TextStyle(color: Colors.white,fontSize: 18)),
                      ]
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  @override
  void initState() {
super.initState();
    next();

  }

  void next()async{

    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>GetStarted()));

  }
}
