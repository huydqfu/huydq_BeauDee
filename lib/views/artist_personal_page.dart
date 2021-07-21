import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_beaudee_app_ver1/services/get_api_service.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model_for_getapi.dart';
import 'package:flutter_beaudee_app_ver1/view_models/login_view_model.dart';
import 'package:flutter_beaudee_app_ver1/view_models/user_view_model.dart';
import 'package:flutter_beaudee_app_ver1/views/booking_artist_page.dart';
import 'package:flutter_beaudee_app_ver1/views/googlemap_page.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class ArtistPersonalPage extends StatefulWidget {
  @override
  final String uid;

  _ArtistPersonalPageState createState() => _ArtistPersonalPageState(this.uid);
  ArtistPersonalPage(this.uid);
}

class _ArtistPersonalPageState extends State<ArtistPersonalPage> {

  List<UserForGet> getData = List();

  final String uid;
  _ArtistPersonalPageState(this.uid);
  @override
  void initState() {
    super.initState();
    // getTokenTest();
    UserViewModel().getSingleArtist(uid).then((data){
      setState(() {
        getData = data;

      });
      print(data);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        title: Text('Your Artist', style: TextStyle(color: Colors.black, fontSize: 20,),),
        leading: BackButton(onPressed: ()=>{Navigator.pop(context)},),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: getData == null ? 0 : getData.length,
          itemBuilder: (context, index){
            return Container(
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 310,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(40),
                          bottomRight: const Radius.circular(40)
                        ),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.rectangle ,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                getData[index].image
                            ))),
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    width: 500,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.5,
                          color: Colors.grey),
                      borderRadius: BorderRadius.only(
                          topRight: const Radius.circular(15),
                          bottomRight: const Radius.circular(15),
                          topLeft: const Radius.circular(15),
                          bottomLeft: const Radius.circular(15)
                      ),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 2,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 5))
                      ],
                      shape: BoxShape.rectangle ,
                      color: Theme.of(context).scaffoldBackgroundColor
                    ),
                    child: Container(
                      child: ListView(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                            child: Text('Service: ${getData[index].service}', style: TextStyle(fontSize: 17, color: Colors.grey, fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              children: [
                                Text('${getData[index].name}', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                                SizedBox(width: 5,),
                                Icon(Icons.assignment_turned_in, size: 17, color: Colors.green,)
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              children: [
                                Icon(Icons.star_border, size: 17, color: Colors.grey,),
                                SizedBox(width: 5,),
                                Text('Price: ${getData[index].minValue}', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),),
                                SizedBox(width: 5,),
                                Icon(Icons.star, size: 17, color: Colors.red,),
                                SizedBox(width: 5,),
                                Text('[30 reviews]', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300))
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              children: [
                                Icon(Icons.access_time_outlined, size: 17, color: Colors.grey,),
                                SizedBox(width: 5,),
                                Text('11:00 - 20:00', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              children: [
                                Icon(Icons.map, size: 17, color: Colors.grey,),
                                SizedBox(width: 5,),
                                Text('Address: ${getData[index].address}', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              children: [
                                Icon(Icons.map, size: 17, color: Colors.grey,),
                                SizedBox(width: 5,),
                                Text('Phone: ${getData[index].phone}', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w300),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // TextButton(
                    //   style: TextButton.styleFrom(
                    //     textStyle: const TextStyle(fontSize: 20),
                    //   ),
                    //   onPressed: (){
                    //     Navigator.push(context, MaterialPageRoute(builder: (context) => GooglemapPage()));
                    //   },
                    //   child: Text('${getData[index].name}'),
                    // ),
                  ),
                ],
              ),
            );
          }
      ),
      bottomSheet: Container(
        height: 50,
        child: Row(
          children: [
            SizedBox(width: 10,),
            IconButton(
              disabledColor: Colors.white,
              icon: Icon(Icons.article_outlined,),
              iconSize: 30,
              onPressed: (){},
            ),
            SizedBox(width: 10,),
            Container(
              // color: Colors.redAccent,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: SizedBox(
                width: 250,
                height: 70,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => GooglemapPage())
                    );
                  },
                  child: Text(
                    'Booking',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  color: Color(0xffe63746),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
