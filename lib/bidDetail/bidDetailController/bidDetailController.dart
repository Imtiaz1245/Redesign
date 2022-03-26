import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/colorsandstrings/colors.dart';
import 'package:untitled2/colorsandstrings/stringstxt.dart';
class BidDetailController extends StatefulWidget {
  const BidDetailController({Key? key}) : super(key: key);

  @override
  State<BidDetailController> createState() => _BidDetailControllerState();
}

class _BidDetailControllerState extends State<BidDetailController> {
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      body: SafeArea(child:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              ListTile(leading: Padding(
                padding:  EdgeInsets.only(top: 10.0),
                child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_rounded,color: defaltColor,)),
              ),
                title: Column(
                  children: [
                    Text(bidDetail,style: TextStyle(color: defaltColor,fontSize: 20),),

                  ],
                ),
                trailing: SizedBox(width: 50,),),
              SizedBox(height: 30,),
              Center(
                child: Container(
                  height: 130,
                  width: 130,
                  child: ClipOval(

                    child:Image.asset("assets/images/profilepic.jpg",fit: BoxFit.fill,) ,
                  ),
                ),
              ),
           SizedBox(height: 20,),
           Center(
             child: Text(nameofperson,style: TextStyle(color: defaltColor,fontSize: 20),),
           ),
              Center(
                child: Text(emailofperson),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 3.5),
                child: ListTile(
                  leading: Padding(
                    padding:  EdgeInsets.only(top: 5.0),
                    child: Text(jobtitle),
                  ),
                  title: Text(jobTitleName,style: TextStyle(color: defaltColor),),
                  trailing: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: defaltColor,width: 2),

                    ),
                    child: Center(child: Text("2040\$",style: TextStyle(color: defaltColor),)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: Column(
                    children: [
                      Text("Bid Status"),
                      Padding(

                        padding:  EdgeInsets.only(top: 7),
                        child: Text("Finished",style: TextStyle(color: Colors.green),),
                      )
                      
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Text("Created Time"),
                      Padding(
                        padding:  EdgeInsets.only(top: 7),
                        child: Text("2 / 1 /2012",style: TextStyle(color: Colors.black),),
                      )


                    ],
                  )),
                  Expanded(child: Column(
                    children: [

                      Text("Delivery Time"),
                      Padding(
                        padding:  EdgeInsets.only(top: 7),
                        child: Text("2 / 1 /2012",style: TextStyle(color: Colors.black),),
                      )

                    ],
                  )),
                  
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding:  EdgeInsets.only(left: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Description:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    SizedBox(height: 2,),
                    Text(description),
SizedBox(height: 20,),
Row(
  children: [
    Expanded(
      child: Padding(
        padding:  EdgeInsets.all(4.0),
        child: Container(
        height: 86,
        width: 100,
          child: Image.asset("assets/images/mapimage.png"),

        ),
      ),
    ),
    Expanded(
      child: Padding(
        padding:  EdgeInsets.all(4.0),
        child: Container(
        height: 86,
        width: 100,
          child: Image.asset("assets/images/mapimage.png"),

        ),
      ),
    ),
    Expanded(
      child: Padding(
        padding:  EdgeInsets.all(4.0),
        child: Stack(
          children: [
            Container(
            height: 86,
            width: 100,
              child: Image.asset("assets/images/mapimage.png"),

            ),
            InkWell(
              onTap: (){
              },
              child: Container(
                height:80,
                width:100,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(0.8),
                    blurRadius: 1,
                    ),

                  ],

                ),
                child: Center(
                  child: Text("+2",style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  ],
)
                  ],
                ),
              ),


            ],
          ),
        ),
      )),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: defaltColor,
        onTap: (value){
    setState(() {
      _currentIndex=value;
    });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.work),label: "All Jobs"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],

      ),
    );
  }
}
