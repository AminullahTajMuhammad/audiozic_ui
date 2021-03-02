import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_constants.dart';

class ItemDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<ItemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          margin: EdgeInsets.only(right: 10),
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 5, left: 5),
                    child: Image.asset(
                      "images/logo.png",
                    ),
                  ),
                  Text(
                    "Audiozic",
                    style: TextStyle(
                        color: AppConstants.PRIMARY_COLOR,
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              )),
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xffF3F3FF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 250,
                    margin: EdgeInsets.only(left: 50),
                    child: Center(
                      child: Image.asset(
                        "images/h_big.png",
                      ),
                    )
                ),
                Container(
                  child: Center(
                      child: Text('Beats Solo3 Headphones',
                        style: TextStyle(
                          color: Color(0xff262626),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Center(
                    child: Text('\$249.6',
                      style: TextStyle(
                          color: Color(0xff060dd9),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 30),
                            child: Text('Colors',
                              style: TextStyle(
                                color: Color(0xff262626),
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            height: 20,
                            child: Container(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 0),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xff402373),
                                          width: 6
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xffe00f83),
                                          width: 6
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xff2ac6ee),
                                          width: 6
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 30),
                            child: Text('Details',
                              style: TextStyle(
                                color: Color(0xff262626),
                                fontFamily: 'Poppins',
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30, top: 10),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('Input Type: ',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(),
                                  child: Text(
                                    '3.5mm stereo jack',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30, top: 2),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('Other Feature: ',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 270,
                                  margin: EdgeInsets.only(),
                                  child: Text(
                                    'Bluetooth, Foldable, Noise Isolation, etc',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30, top: 2),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('Form Factor: ',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(),
                                  child: Text(
                                    'On-Ear',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30, top: 2),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('Connections: ',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(),
                                  child: Text(
                                    'Bluetooth, Wireless',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30, top: 2),
                            child: Row(
                              children: [
                                Container(
                                  child: Text('Speaker Configurations: ',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(),
                                  child: Text(
                                    'Stereo',
                                    style: TextStyle(
                                      color: Color(0xff262626),
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 30, right: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    margin: EdgeInsets.only(left: 10, right: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xfff3f3ff),
                                      borderRadius: BorderRadius.circular(26),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Add to Cart",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    margin: EdgeInsets.only(right: 10, left: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xff060dd9),
                                      borderRadius: BorderRadius.circular(26),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Buy Now",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}