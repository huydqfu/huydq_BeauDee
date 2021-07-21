import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_beaudee_app_ver1/views/booking_artist_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GooglemapPage extends StatefulWidget {

  @override
  _GooglemapPageState createState() => _GooglemapPageState();
}

class _GooglemapPageState extends State<GooglemapPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: BackButton(
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            title: Text('Your Location To Book', style: TextStyle(fontSize: 20, color: Colors.black),),
            centerTitle: true,
            backgroundColor: Colors.redAccent,
          ),
          body: Stack(
            children: <Widget>[
              //LatLng of HCM Cities VietNam is 10.762622, 106.660172
              GoogleMap(initialCameraPosition: CameraPosition(target:
              LatLng(10.762622, 106.660172),
                  zoom: 18),
                myLocationEnabled: true,
              ),
              Positioned(
                left: 25,
                right: 25,
                top: 35,
                child: Container(
                  height: 40,
                  width: double.infinity,
                  //margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    border: Border.all(color: Colors.blue, width: 0.5)
                  ),
                  child: Container(
                    child: TextFormField(
                      decoration: const InputDecoration(

                        icon: Icon(Icons.search, size: 20,),
                        //hintText: 'Choose your personal location',
                        //counterText: 'Choose your personal location'
                        labelText: 'Choose your personal location',
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  ),
                ),
              ),
              Positioned(
                top: 200,
                left: 80,
                right: 40,
                child: Icon(Icons.add_location, size: 50, color: Colors.red,),
              ),
              Positioned(
                left: 70,
                right: 70,
                bottom: 20,
                child: SizedBox(
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))
                        ),
                      minimumSize: Size(MediaQuery.of(context).size.width-20,40)
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookingArtistPage()));
                    },
                    child: Text('Choose This Location', style: TextStyle(fontSize: 20, color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}

