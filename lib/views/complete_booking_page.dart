import 'package:flutter/material.dart';
import 'package:flutter_beaudee_app_ver1/views/home_page.dart';

class CompleteBookingPage extends StatefulWidget {

  @override
  _CompleteBookingPageState createState() => _CompleteBookingPageState();
}

class _CompleteBookingPageState extends State<CompleteBookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text('Complete Your Booking', style: TextStyle(fontSize: 20, color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              SizedBox(height: 50,),
              SizedBox(width: 20,),
              Container(
                width: 300,
                height: 50,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.fromLTRB(20, 0, 30, 0),
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
                          Text('Complete Booking', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),),
                          SizedBox(width: 30,),
                          IconButton(
                            icon: Icon(Icons.add_shopping_cart_sharp, size: 20, color: Colors.black,),
                            onPressed: (){

                            },
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(width: 20,),
              SizedBox(height: 20,),
            ],
          ),
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
              SizedBox(width: 40,),
              Text('Back To HomePage', style: TextStyle(fontSize: 22, color: Colors.white),),
              SizedBox(width: 20,),
              TextButton(child: Icon(Icons.arrow_forward_ios, size: 20,),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
            ],
          )
      ),
    );
  }
}
