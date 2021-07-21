import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_beaudee_app_ver1/views/home_page.dart';
import 'package:flutter_beaudee_app_ver1/views/mybooking_page.dart';
import 'package:flutter_beaudee_app_ver1/views/user_info_page.dart';

class PromotionPage extends StatefulWidget {

  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {

  Widget _Banner(){
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                shrinkWrap: true,
                children: <Widget>[
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(25.0) //
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
                    child: Image.asset('1.png', fit: BoxFit.fitHeight,),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(25.0) //
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
                    child: Image.asset('2.png', fit: BoxFit.fitHeight,),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.all(0.0),decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFe76f51),width: 2.0),
                    borderRadius: BorderRadius.all(
                        Radius.circular(25.0) //
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
                    child: Image.asset('3.png', fit: BoxFit.fitHeight,),
                  ),
                ],
              ),
            )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        // leading: Icon(Icons.arrow_back, color: Colors.black),
        title: Text("Promotion", style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black
        ),
        ),
      ),
      body: _Banner(),
      bottomNavigationBar: ConvexAppBar(
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
