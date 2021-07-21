
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
//import 'package:final_demo_api/views/call_one_user.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_beaudee_app_ver1/views/hair_artist_page.dart';
import 'package:flutter_beaudee_app_ver1/views/home_page.dart';
import 'package:flutter_beaudee_app_ver1/view_models/user_view_model.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model.dart';
import 'package:flutter_beaudee_app_ver1/views/mybooking_page.dart';
import 'package:flutter_beaudee_app_ver1/views/user_info_page.dart';

import 'lips_artist_page.dart';

class ServiceForChoosePage extends StatefulWidget {
  const ServiceForChoosePage({Key key}) : super(key: key);

  @override
  _ServiceForChoosePageState createState() => _ServiceForChoosePageState();
}

  class _ServiceForChoosePageState extends State<ServiceForChoosePage> {

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.redAccent,
            brightness: Brightness.light,
            leading: IconButton (
                icon: Icon(Icons.arrow_back, color: Colors.white, size: 20,),
                onPressed: () {
                  Navigator.of(context).pop();
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (context) => HomePage())
                  // );
                }
            ),
            //leading: Icon(Icons.arrow_back, color: Colors.black),
            title: Text("Services", style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black
            ),
            ),
          ),
          body: new GridView.count(
            mainAxisSpacing: 10,
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 15,
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(14.0) //
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                    child: Image.asset('Hair.png', fit: BoxFit.fitWidth,),
                  ),
                  onTap: () {
                    name = "Hair";
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HairArtistPage()));
                  }
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                  borderRadius: BorderRadius.all(
                      Radius.circular(14.0) //
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                  child: Image.asset('Lips.png', fit: BoxFit.fitWidth,),
                ),
                onTap: (){
                  name = "Lips";
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LipsArtistPage()));
                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                  borderRadius: BorderRadius.all(
                      Radius.circular(14.0) //
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                  child: Image.asset('Makeup.png', fit: BoxFit.fitWidth,),
                ),
                onTap: (){

                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                  borderRadius: BorderRadius.all(
                      Radius.circular(14.0) //
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                  child: Image.asset('Nail.png', fit: BoxFit.fitWidth,),
                ),
                onTap: (){

                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                  borderRadius: BorderRadius.all(
                      Radius.circular(14.0) //
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                  child: Image.asset('Eyebrown.png', fit: BoxFit.fitWidth,),
                ),
                onTap: (){

                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                  borderRadius: BorderRadius.all(
                      Radius.circular(14.0) //
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                  child: Image.asset('Eyelash.png', fit: BoxFit.fitWidth,),
                ),
                onTap: (){

                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                  borderRadius: BorderRadius.all(
                      Radius.circular(14.0) //
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                  child: Image.asset('Skincare.png', fit: BoxFit.fitWidth,),
                ),
                onTap: (){

                },
              )
            ],
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
        );
      }
}
