import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 365,
                    width: 367,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Nike1.png'),
                        )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        'Nike Air Force',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'PKR 3,499',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    )
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                    ),
                    Text(
                      "4.9(15 Review)",
                      style: TextStyle(color: Colors.orange),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 48),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        "Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                          textAlign: TextAlign.center,
                          "Nike Dri-Fit is a polyester  fabric designed to  "
                          "dry so you can more comfortably work harder longer. work harder "),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Colors:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 48),
                          child: Row(
                            children: [
                              reuseconatiner(color: Colors.black),
                              SizedBox(
                                width: 10,
                              ),
                              reuseconatiner(color: Colors.pinkAccent),
                              SizedBox(
                                width: 10,
                              ),
                              reuseconatiner(color: Colors.blue),
                              SizedBox(
                                width: 10,
                              ),
                              reuseconatiner(color: Colors.orange),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        "Size:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(color: CupertinoColors.systemGrey)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Choose Size",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: CupertinoColors.systemGrey),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Icon(
                              CupertinoIcons.forward,
                              color: CupertinoColors.systemGrey,
                            ),
                            Row(
                              children: [

                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 42,
                        width: 303,
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                            child: Text(
                          'Buy Now',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class reuseconatiner extends StatelessWidget {
  var color;
  reuseconatiner({super.key, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.grey),
          shape: BoxShape.circle),
    );
  }
}
