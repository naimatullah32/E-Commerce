import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bubble_navigation_bar/bubble_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/Screens/Profile.dart';
import 'package:store/Screens/cart.dart';
import 'package:store/Screens/details.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageController = PageController();
  int _index = 0;
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _index = _pageController.page!.round();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      bottomNavigationBar: BubbleNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black,
        currentIndex: _index,
        onIndexChanged: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BubbleNavItem(
            icon: Icon(CupertinoIcons.house_alt),
            label: 'Home',
          ),
          BubbleNavItem(
            icon: Icon(Icons.storefront),
            label: 'Store',
          ),
          BubbleNavItem(
            icon: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
                child: Icon(Icons.shopping_cart)),
            label: 'Cart',
          ),
          BubbleNavItem(
            icon: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                },
                child: Icon(Icons.person)),
            label: 'Profile',
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40,left: 51),
                  child: Text("Hi Naimat!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text("Good Morning!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                SizedBox(width: 90,),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/images.jpeg"),
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28)
                    )
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30 ),
                      child: Container(
                        height: 32,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(child: Text("All")),
                      ),
                    ),
                    SizedBox(width: 29,),
                    Container(
                      height: 32,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Nike")),
                    ),
                    SizedBox(width: 29,),
                    Container(
                      height: 32,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Adidas")),
                    ),
                    SizedBox(width: 29,),
                    Container(
                      height: 32,
                      width: 60,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Convirse")),
                    ),
                  ],
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>details()));
                        },
                        child: Container(
                          height: 184,
                          width: 142,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                            image: DecorationImage(
                              image: AssetImage('assets/images/Nike1.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 184,
                        width: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                            image: DecorationImage(
                              image: AssetImage('assets/images/nike2.png'),
                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  children: [
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: Text("Nike Air Force"),
                        ),
                        SizedBox(width: 90),
                        Text("Nike Shoes"),
                      ],
                    ),
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: Text('PKR 3,499',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(width: 113),
                        Text("PKR 3000",style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 184,
                        width: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                            image: DecorationImage(
                              image: AssetImage('assets/images/nike3.png'),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 184,
                        width: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                            image: DecorationImage(
                              image: AssetImage('assets/images/w1.png'),
                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  children: [
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: Text("Nike Fire"),
                        ),
                        SizedBox(width: 123),
                        Text("Adidas Force"),
                      ],
                    ),
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: Text('PKR 4,999',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(width: 113),
                        Text("PKR 1,999",style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 184,
                        width: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                            image: DecorationImage(
                              image: AssetImage('assets/images/w5.png'),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 184,
                        width: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                            image: DecorationImage(
                              image: AssetImage('assets/images/nike4.png'),
                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  children: [
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: Text("Nike onose"),
                        ),
                        SizedBox(width: 123),
                        Text("fauji shoes"),
                      ],
                    ),
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: Text('PKR 3,399',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(width: 113),
                        Text("PKR 7,999",style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 184,
                        width: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                            image: DecorationImage(
                              image: AssetImage('assets/images/w3.png'),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 184,
                        width: 142,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[200],
                            image: DecorationImage(
                              image: AssetImage('assets/images/w4.png'),
                            )
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  children: [
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: Text("Steel Shoes"),
                        ),
                        SizedBox(width: 123),
                        Text("Women star"),
                      ],
                    ),
                    Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 58),
                          child: Text('PKR 5,999',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(width: 113),
                        Text("PKR 3,199",style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
  }
}
