import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beaudee_app_ver1/views/user_info_page.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'home_page.dart';

class MyBookingPage extends StatefulWidget {

  @override
  _MyBookingPageState createState() => _MyBookingPageState();
}

class _MyBookingPageState extends State<MyBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              //padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 50,),
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: "My ", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w300)),
                                TextSpan(text: "Bookings", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600)),
                              ]
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: BoxDecoration(

                        ),
                        child: ToggleSwitch(
                          minWidth: 120,
                          minHeight: 35,
                          cornerRadius: 40.0,
                          activeBgColors: [[Colors.greenAccent], [Colors.greenAccent]],
                          activeFgColor: Colors.blueGrey,
                          inactiveBgColor: Colors.white,
                          inactiveFgColor: Colors.black,
                          initialLabelIndex: 1,
                          totalSwitches: 2,
                          labels: ['Upcoming', 'Scheduled'],fontSize: 20,
                          borderColor: [Colors.red],
                          radiusStyle: true,
                          onToggle: (index) {
                            print('switched to: $index');
                          },
                        ),
                        padding: EdgeInsets.fromLTRB(55, 0, 50, 0),
                      ),
                      SizedBox(height: 30,),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Today', style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),),
                            ),
                            SizedBox(width: 150,),
                            Expanded(
                              child: Text('Sort by', style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      ),
                      SizedBox(height: 10,),
                          Container(
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(40))
                              ),
                              child: Text('Booking placed', style: TextStyle(fontSize: 13, color: Colors.red),),
                              onPressed: (){

                              },
                            ),
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  border: Border.all(color: Colors.indigo, width: 1.5)
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Lucia Nguyen', style: TextStyle(fontSize: 15),),
                                          SizedBox(height: 2,),
                                          Text('Makeup & Hairstyle', style: TextStyle(fontSize: 13),),
                                          SizedBox(height: 20,),
                                        ],
                                      ),
                                      padding: EdgeInsets.fromLTRB(10,0,0,0),
                                    ),
                                  ),
                                  SizedBox(width: 40,),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                      height: 100,
                                      width: 150,
                                      child: Column(
                                        children: [
                                          Image.asset('artist_lucia.png', fit: BoxFit.fill, cacheHeight: 100, cacheWidth: 150,)
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                      SizedBox(height: 20,),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Yesterday', style: TextStyle(fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40))
                          ),
                          child: Text('Completed', style: TextStyle(fontSize: 13, color: Colors.red),),
                          onPressed: (){

                          },
                        ),
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(color: Colors.indigo, width: 1.5)
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Le Anh Tu', style: TextStyle(fontSize: 15),),
                                      SizedBox(height: 2,),
                                      Text('Nail', style: TextStyle(fontSize: 13),),
                                      SizedBox(height: 20,),
                                    ],
                                  ),
                                  padding: EdgeInsets.fromLTRB(20,0,0,0),
                                ),
                              ),
                              SizedBox(width: 40,),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Image.asset('artist_anhtu.png', fit: BoxFit.fill, cacheHeight: 100, cacheWidth: 150,)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
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
              initialActiveIndex: 1, //optional, default as 0
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
          )
        ],
      ),
    );
  }
}
