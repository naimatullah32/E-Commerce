import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Column(
        children: [
          for(int i=0;i<=2;i++)
          Padding(
            padding: const EdgeInsets.only(top: 60,left: 30),
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  alignment:Alignment.topLeft,
                  image:AssetImage("assets/images/Nike1.png"),
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 100,top: 20),
                        child: Text("Nike Air Force\nPKR 3,499",style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(width: 90,),
                      Icon(Icons.favorite,color: Colors.red,),

                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 240),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.blueGrey)
                          ),
                           child: Icon(Icons.add,size: 16,)
                        ),
                      ),
                      SizedBox(width: 8,),
                      Text("1",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(width: 8,),
                      Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blueGrey)
                          ),
                          child: Center(child: Text("--",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),))
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 200,),
          Center(
            child: Container(
              height: 60,
              width: 303,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Center(child: Text("Check Out",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),)),
            ),
          )
        ],
      ),
    ),
  );
  }
}