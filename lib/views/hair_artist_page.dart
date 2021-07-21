import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model_for_getapi.dart';
import 'package:flutter_beaudee_app_ver1/view_models/user_view_model.dart';
import 'package:flutter_beaudee_app_ver1/views/artist_personal_page.dart';
import 'package:flutter_beaudee_app_ver1/views/home_page.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_beaudee_app_ver1/services/get_api_service.dart';

class HairArtistPage extends StatefulWidget {

  @override
  _HairArtistPageState createState() => _HairArtistPageState();
}

class _HairArtistPageState extends State<HairArtistPage> {

  List<UserForGet> getData = List();

  @override
  void initState() {
    super.initState();
    // getTokenTest();
    UserViewModel().getArtist("Hair").then((data){
      setState(() {
        getData = data;
      });
    }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back, color: Colors.white, size: 30,),
        backgroundColor: Colors.redAccent,
        title: Container(
          //padding: EdgeInsets.fromLTRB(160, 0, 0, 0),
          child: Text('Hair', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.black),),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: getData == null ? 0 : getData.length,
        itemBuilder: (context, index){
          return Container(
            child: Column(
              children: [
                Container(

                  child: GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.all(10),
                      elevation: 1.5,
                        child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: ListTile(
                        title: Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(60/2),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage('${getData[index].image}')
                                )
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                    width: MediaQuery.of(context).size.width-100,
                                    child: Text('${getData[index].name}',style: TextStyle(fontSize: 15),)),
                                SizedBox(height: 5,),
                                Text('Email: ${getData[index].email}'.toString(),style: TextStyle(fontSize: 15,color: Colors.grey),),
                                SizedBox(height: 5,),
                                Text('Service: ${getData[index].service}'.toString(),style: TextStyle(fontSize: 15,color: Colors.grey),),
                                SizedBox(height: 5,),
                                Text('Price: ${getData[index].minValue}'.toString(),style: TextStyle(fontSize: 15,color: Colors.grey),),
                              ],
                            ),
                          ),
                          SizedBox(width: 25,),
                          Expanded(
                            child: IconButton(
                              icon: Container(
                                child: Row(
                                  children: [
                                    Text('Active', style: TextStyle(fontSize: 15, color: Colors.green)),
                                    SizedBox(width: 3,),
                                    Icon(Icons.assignment_turned_in, size: 15, color: Colors.green,)
                                  ],
                                ),
                                // 'Sign Out' , style: TextStyle(fontSize: 20, color: Colors.black),
                              ),
                              onPressed: (){},
                            ),
                          ),
                        ],
                          ),
                        ),
                      ),
                    ),
                          onTap: (){
                            print('tap');
                            Navigator.push(
                            context, MaterialPageRoute(builder: (context) => ArtistPersonalPage(getData[index].uid)));
                      },
                    ),
               // child: TextButton(
                  //   style: TextButton.styleFrom(
                  //     textStyle: const TextStyle(fontSize: 20),
                  //   ),
                  //   onPressed: (){
                  //    // print('${getData[index].uid}');
                  //     Navigator.push(
                  //         context, MaterialPageRoute(builder: (context) => ArtistPersonalPage(getData[index].uid)));
                  //   },
                  //   child: Text('${getData[index].name}'),
                  // ),
                )
              ],
            ),
          );
        }
      ),
    );
  }
}
