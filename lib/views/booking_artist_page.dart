import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_beaudee_app_ver1/views/complete_booking_page.dart';

class BookingArtistPage extends StatefulWidget {

  @override
  _BookingArtistPageState createState() => _BookingArtistPageState();
}

class _BookingArtistPageState extends State<BookingArtistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Navigator.pop(context);
          }
        ),
        title: Text('Booking Form', style: TextStyle(fontSize: 20, color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
          children: [
            Positioned(
              left: 25,
              right: 25,
              top: 20,
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: Text('Your Services', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('HairStyle', style: TextStyle(fontSize: 17, color: Colors.black)),
                          SizedBox(width: 50,),
                          Text('250.000 / 60 min', style: TextStyle(fontSize: 17, color: Colors.red)),
                          SizedBox(width: 20,),
                          Icon(Icons.timelapse, size: 17, color: Colors.grey,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              top: 130,
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(height: 10,),
                          SizedBox(width: 20,),
                          Text('Add note to Beautician', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(width: 30,),
                          IconButton(
                            icon: Icon(Icons.add_sharp, size: 20, color: Colors.black,),
                            onPressed: (){

                            },
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              top: 180,
              child: Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Container(
                  child: ListView(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Text('Basic Info & Address', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('Your address', style: TextStyle(fontSize: 15, color: Colors.grey),),
                          SizedBox(width: 150,),
                          Text('Edit', style: TextStyle(fontSize: 15, color: Colors.red),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Text('76 Le Loi, P4, Go Vap, HCM', style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text('_________________________________________', style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w300),),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('Contact Name', style: TextStyle(fontSize: 15, color: Colors.grey),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Text('Doan Quang Huy', style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text('Phone Number', style: TextStyle(fontSize: 15, color: Colors.grey),),
                          SizedBox(width: 140,),
                          Text('Edit', style: TextStyle(fontSize: 15, color: Colors.red),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Text('0979520695', style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 25,
              right: 25,
              top: 440,
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(height: 10,),
                          SizedBox(width: 20,),
                          Text('Promo Code', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(width: 30,),
                          Text('BEAUDEE', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          IconButton(
                            icon: Icon(Icons.add_sharp, size: 20, color: Colors.black,),
                            onPressed: (){

                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   left: 25,
            //   right: 25,
            //   top: 690,
            //   child: Container(
            //     height: 80,
            //     width: 300,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       border: Border.all(color: Colors.grey, width: 0.5),
            //       borderRadius: BorderRadius.all(Radius.circular(10)),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey.withOpacity(0.5),
            //           spreadRadius: 2,
            //           blurRadius: 7,
            //           offset: Offset(0, 3), // changes position of shadow
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Positioned(
            //   left: 25,
            //   right: 25,
            //   top: 500,
            //   child: Container(
            //     height: 70,
            //     width: 300,
            //     decoration: BoxDecoration(
            //       color: Colors.redAccent,
            //       border: Border.all(color: Colors.grey, width: 0.5),
            //       borderRadius: BorderRadius.all(Radius.circular(40)),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey.withOpacity(0.5),
            //           spreadRadius: 2,
            //           blurRadius: 7,
            //           offset: Offset(0, 3), // changes position of shadow
            //         ),
            //       ],
            //     ),
            //     child: Row(
            //       children: [
            //         SizedBox(width: 20,),
            //         Text('250.000 VND', style: TextStyle(fontSize: 30, color: Colors.white),),
            //         SizedBox(width: 100,),
            //         TextButton(child: Text('Request', style: TextStyle(fontSize: 30, color: Colors.white)),
            //           onPressed: (){
            //             Navigator.push(context, MaterialPageRoute(builder: (context) => CompleteBookingPage()));
            //           },
            //         ),
            //         SizedBox(width: 10,),
            //         Icon(Icons.arrow_forward, size: 25, color: Colors.white,)
            //       ],
            //     )
            //   ),
            // ),
          ],
      ),
      bottomSheet: Container(
          height: 50,
          width: 400,
          margin: EdgeInsets.only(
            left: 20, right: 20 , bottom: 10
          ),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            border: Border.all(color: Colors.grey, width: 0.5),
            borderRadius: BorderRadius.all(Radius.circular(40)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 15,),
              Text('250.000 VND', style: TextStyle(fontSize: 22, color: Colors.white),),
              SizedBox(width: 45,),
              TextButton(child: Text('Request', style: TextStyle(fontSize: 22, color: Colors.white)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CompleteBookingPage()));
                },
              ),
              SizedBox(width: 3,),
              Icon(Icons.arrow_forward, size: 17, color: Colors.white,)
            ],
          )
      ),
    );
  }
}
