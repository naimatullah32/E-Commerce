import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/Home_Screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.white,
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text("Welcome",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
           SizedBox(height: 15,),
           Text(
               textAlign: TextAlign.center,
               "Lorem Ipsum is simply dummy text of the "
               "printing and typesetting industry. Lorem Ipsum has been "
               "the the bb\nwhich one is the best country"),
           Image.asset("assets/images/spalsh.png"),
           SizedBox(height: 50,),
           Text("Azhan Shopping Mart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
         ],
       ),
     ),
   );
  }
}