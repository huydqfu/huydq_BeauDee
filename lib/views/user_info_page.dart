
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model.dart';
import 'package:flutter_beaudee_app_ver1/view_models/user_view_model.dart';
import 'package:flutter_beaudee_app_ver1/views/home_page.dart';
import 'package:flutter_beaudee_app_ver1/views/mybooking_page.dart';
import 'package:flutter_beaudee_app_ver1/views/update_profile.dart';
import 'package:http/http.dart';
import 'package:flutter_beaudee_app_ver1/view_models/login_view_model.dart';
import 'package:flutter_beaudee_app_ver1/views/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_beaudee_app_ver1/services/post_api_service.dart';
import 'package:flutter_beaudee_app_ver1/models/share_refefence_model.dart';


class UserInfoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<User> getData = List();
  @override
  void initState() {
    super.initState();
    getTokenTest();
     Share().getToken('tokenFirebase').then((val){
       UserViewModel().getUser(val).then((data){
         setState(() {
           getData = data;
         });
       }
       );
    });


  }

  void getTokenTest() async{

    final test = await Share().getToken('tokenCuaKhai');

    setState(() {
      userToken = test;
    });
  }

  Widget buildSignOutOption(){
    if (isLoggedIn == 1) {
      signOutFacebook();
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
            return LoginPage();
          }), ModalRoute.withName('/'));
    } else if (isLoggedIn == 2) {
      signOutGoogle();
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
            return LoginPage();
          }), ModalRoute.withName('/'));
    } else
      Text('Sign out failed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              toolbarHeight: 180,
              title: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Row(
                    children: [
                      Expanded(child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Theme.of(context).scaffoldBackgroundColor),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1),
                                  offset: Offset(0, 10))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    imageUrl
                                ))),
                      )),
                      SizedBox(width: 5,),
                      Expanded(child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: getData == null ? 0 : getData.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.fromLTRB(0, 60, 0, 70),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text('${getData[index].name}', style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black),),
                                        SizedBox(height: 5,),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context, MaterialPageRoute(
                                                builder: (context) =>
                                                    UpdateProfilePage())
                                            );
                                          },
                                          child: Text("Edit Profile",
                                            style: TextStyle(fontSize: 14,
                                                color: Colors.redAccent,
                                                fontWeight: FontWeight.w400),
                                            textAlign: TextAlign.left,),
                                        ),
                                        SizedBox(height: 5,),
                                        Text("Point: 0", style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),),
                                        SizedBox(height: 5,),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                      )),
                    ],
                  )
              ),
              backgroundColor: Colors.transparent,
              elevation: 00,
              actions: <Widget>[
                PopupMenuButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 20,
                      // 'Sign Out' , style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 120),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text("Sign Out"),
                    ),
                  ],
                  onCanceled: () {
                    print("You have canceled the menu.");
                  },
                  onSelected: (value) {
                    if(value == 1) {
                      buildSignOutOption();
                    }
                  },
                ),
                SizedBox(height: 0,),
              ],
            ),
            body: new Container(
              //margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.white,
                      // Color(0xFFff85e0),
                      Colors.white,
                    ],
                  ),
                  // borderRadius: BorderRadius.only(
                  //   topLeft: const Radius.circular(50), topRight: const Radius.circular(50),
                  //   bottomLeft: const Radius.circular(50), bottomRight: const Radius.circular(50)
                  // ),
                //border: Border.all(color: Color(0xFFe0e0e0), width: 2.0)
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            decoration: BoxDecoration(
                                //color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  topRight: const Radius.circular(40)
                                ),
                                border: Border.all(color: Colors.grey, width: 0.5)
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text(
                                        'Your Account',
                                        style: TextStyle(fontSize: 17, color: Colors.black,),
                                      ),
                                      SizedBox(width: 130,),
                                      Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,)
                                    ],
                                  ),
                                //color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topRight: const Radius.circular(40)
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.transparent,
                              //   borderRadius: BorderRadius.all(const Radius.circular(40)),//all(color: Colors.grey, width: 1.5)
                              border: Border(
                                  left: BorderSide(color: Colors.grey, width: 0.5),
                                  right: BorderSide(color: Colors.grey, width: 0.5),
                                  bottom: BorderSide(color: Colors.grey, width: 0.5)
                            )
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text(
                                        'Payment',
                                        style: TextStyle(fontSize: 17, color: Colors.black,),
                                      ),
                                      SizedBox(width: 165,),
                                      Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,)
                                    ],
                                  ),
                                //color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    //borderRadius: BorderRadius.all(Radius.circular(40))
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.transparent,
                              //   borderRadius: BorderRadius.all(const Radius.circular(40)),
                                border: Border(
                                    left: BorderSide(color: Colors.grey, width: 0.5),
                                    right: BorderSide(color: Colors.grey, width: 0.5),
                                    bottom: BorderSide(color: Colors.grey, width: 0.5)
                                )
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text(
                                      'Favorite Beauticians',
                                      style: TextStyle(fontSize: 17, color: Colors.black,),
                                    ),
                                    SizedBox(width: 77,),
                                    Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,)
                                  ],
                                ),
                                //color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  //borderRadius: BorderRadius.all(Radius.circular(40))
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.transparent,
                              //   borderRadius: BorderRadius.all(const Radius.circular(40)),
                                border: Border(
                                    left: BorderSide(color: Colors.grey, width: 0.5),
                                    right: BorderSide(color: Colors.grey, width: 0.5),
                                    bottom: BorderSide(color: Colors.grey, width: 0.5)
                                )
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text(
                                        'Emergency contact',
                                        style: TextStyle(fontSize: 17, color: Colors.black,),
                                      ),
                                      SizedBox(width: 85,),
                                      Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,)
                                    ],
                                  ),
                                //color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    //borderRadius: BorderRadius.all(Radius.circular(40))
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.transparent,
                              //   borderRadius: BorderRadius.all(const Radius.circular(40)),
                                border: Border(
                                    left: BorderSide(color: Colors.grey, width: 0.5),
                                    right: BorderSide(color: Colors.grey, width: 0.5),
                                    bottom: BorderSide(color: Colors.grey, width: 0.5)
                                )
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text(
                                        'Settings',
                                        style: TextStyle(fontSize: 17, color: Colors.black,),
                                      ),
                                      SizedBox(width: 169,),
                                      Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,)
                                    ],
                                  ),
                                //color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    //borderRadius: BorderRadius.all(Radius.circular(40))
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              //color: Colors.transparent,
                              //   borderRadius: BorderRadius.all(const Radius.circular(40)),
                                border: Border(
                                    left: BorderSide(color: Colors.grey, width: 0.5),
                                    right: BorderSide(color: Colors.grey, width: 0.5),
                                    bottom: BorderSide(color: Colors.grey, width: 0.5)
                                )
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                  child: Row(
                                    children: [
                                      SizedBox(width: 10,),
                                      Text(
                                        'Support',
                                        style: TextStyle(fontSize: 17, color: Colors.black,),
                                      ),
                                      SizedBox(width: 171,),
                                      Icon(Icons.arrow_forward_ios, color: Colors.black, size: 20,)
                                    ],
                                  ),
                                //color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    //borderRadius: BorderRadius.all(Radius.circular(40))
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 0,),

                      ],
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
              initialActiveIndex: 2, //optional, default as 0
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
        ],
      ),
    );
  }
}