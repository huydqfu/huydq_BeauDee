
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_beaudee_app_ver1/views/promotion_page.dart';
import 'package:flutter_beaudee_app_ver1/views/service_for_choose.dart';
import 'package:flutter_beaudee_app_ver1/views/user_info_page.dart';

import 'mybooking_page.dart';

  class HomePage extends StatefulWidget {

    @override
    _HomePageState createState() => _HomePageState();
  }

  TextStyle _buildStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.w600
    );
  }

  Widget _BodyHomePage(){
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: <Widget>[
              // alignment: AlignmentDirectional.centerStart,
              Expanded(
                child: Text(
                  'Promotion',
                  style: _buildStyle(),
                  textAlign: TextAlign.start,

                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                  },
                  child: Text("See all", style: TextStyle(fontSize: 15, color: Colors.red), textAlign: TextAlign.right),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              // margin: EdgeInsets.symmetric(vertical: 20.0),
              // height: 200.0,
              child: ListView(
                padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      '1.png',
                      width: 300,
                      height: 250,
                      // width: 510,
                      // height: 350,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      '2.png',
                      width: 520,
                      height: 350,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      '3.png',
                      width: 520,
                      height: 350,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: <Widget>[
              // alignment: AlignmentDirectional.centerStart,
              Expanded(
                child: Text(
                  'Services',
                  style: _buildStyle(),
                  textAlign: TextAlign.start,
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text("See all",  style: TextStyle(fontSize: 20, color: Colors.red), textAlign: TextAlign.right,),
                ),
              ),
            ]),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 100.0,
              child: ListView(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      'Hair.png',
                      width: 245,
                      height: 100,
                      //fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      'Nail.png',
                      width: 245,
                      height: 100,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      'Makeup.png',
                      colorBlendMode: BlendMode.lighten,
                      width: 245,
                      height: 100,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      'Eyelash.png',
                      colorBlendMode: BlendMode.lighten,
                      width: 245,
                      height: 100,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      'Lips.png',
                      colorBlendMode: BlendMode.lighten,
                      width: 245,
                      height: 100,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      'Eyebrown.png',
                      colorBlendMode: BlendMode.lighten,
                      width: 245,
                      height: 100,
                    ),
                  ),
                  SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 10,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset(
                      'Skincare.png',
                      colorBlendMode: BlendMode.lighten,
                      width: 245,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  class _HomePageState extends State<HomePage> {
    static const String _title = 'Hello BeauDees';

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Container(
              padding: const EdgeInsets.fromLTRB(15, 35, 0, 35),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: "Hello ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300)),
                      TextSpan(text: "BeauDees", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                    ]
                ),
              ),
            ),
            // const Text(
            //   _title,
            //   style: TextStyle(
            //     fontFamily: 'RobotoMono',
            //     // color: Colors.black,
            //     fontSize: 25,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 25,
                ),
                onPressed: () {
                  // do something
                },
              )
            ],
            backgroundColor: Colors.redAccent, // status bar color
            brightness: Brightness.light,
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(children: <Widget>[
                    // alignment: AlignmentDirectional.centerStart,
                    Expanded(
                      child: Text(
                        'Promotion',
                        style: _buildStyle(),
                        textAlign: TextAlign.start,

                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PromotionPage())
                          );
                        },
                        child: Text("See all", style: TextStyle(fontSize: 17, color: Colors.red), textAlign: TextAlign.right),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Container(
                    // margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 200.0,
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(7, 0, 7, 0),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            '1.png',
                            width: 345,
                            height: 200,
                            // width: 510,
                            // height: 350,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            '2.png',
                            width: 345,
                            height: 200,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            '3.png',
                            width: 345,
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(children: <Widget>[
                    // alignment: AlignmentDirectional.centerStart,
                    Expanded(
                      child: Text(
                        'Services',
                        style: _buildStyle(),
                        textAlign: TextAlign.start,

                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => ServiceForChoosePage())
                          );
                        },
                        child: Text("See all", style: TextStyle(fontSize: 17, color: Colors.red), textAlign: TextAlign.right),
                      ),
                    ),
                  ]),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(vertical: 35),
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            'Hair.png',
                            width: 150,
                            height: 50,
                            //fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            'Nail.png',
                            width: 150,
                            height: 50,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            'Makeup.png',
                            colorBlendMode: BlendMode.lighten,
                            width: 150,
                            height: 50,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            'Eyelash.png',
                            colorBlendMode: BlendMode.lighten,
                            width: 150,
                            height: 50,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            'Lips.png',
                            colorBlendMode: BlendMode.lighten,
                            width: 150,
                            height: 50,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            'Eyebrown.png',
                            colorBlendMode: BlendMode.lighten,
                            width: 150,
                            height: 50,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFf6b6bb),width: 2.0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(14.0) //
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 10,
                              blurRadius: 7,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                          child: Image.asset(
                            'Skincare.png',
                            colorBlendMode: BlendMode.lighten,
                            width: 150,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: ConvexAppBar(
            height: 45,
            items: [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.message, title: 'My Booking'),
              TabItem(icon: Icons.account_circle, title: 'Account'),
            ],
            initialActiveIndex: 0, //optional, default as 0
            // print('click index=$i')
            onTap: (int i){
              if(i == 0){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomePage())
                );
              }
              else if (i == 1){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyBookingPage())
                );
              }
              else if (i == 2){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => UserInfoPage())
                );
              }
            },
            backgroundColor: Colors.redAccent,
          ),
        ),
      );
    }
  }
