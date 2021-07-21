import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model_for_getapi.dart';
import 'package:flutter_beaudee_app_ver1/services/firebase_api.dart';
import 'package:flutter_beaudee_app_ver1/services/update_api_service.dart';
import 'package:flutter_beaudee_app_ver1/models/share_refefence_model.dart';
import 'package:flutter_beaudee_app_ver1/view_models/login_view_model.dart';
import 'package:flutter_beaudee_app_ver1/view_models/user_view_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:flutter_beaudee_app_ver1/view_models/login_view_model.dart';
import 'package:provider/provider.dart';

class UpdateProfilePage extends StatefulWidget {

  @override
  _UpdateProfilePageState createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
   String userName ='';
   String email ='';
   String phone ='';
   String address ='';
   String minValue ='';
   String dayOfBirth ='';
   String imageLink ='';
   File _image;
   List<UserForGet> getData;

   UploadTask task;
   String urlImage;

   Future getImage() async {
     var image = await ImagePicker.pickImage(source: ImageSource.gallery);
     setState(() {
       _image = image;
       print('Image Path $_image');
     });
     uploadFile();
   }

   showAlertDialog(BuildContext context, int i) {
     // Create button
     Widget okButton = FlatButton(
       child: Text("OK"),
       onPressed: () {
         Navigator.of(context).pop();
       },
     );

     // Create AlertDialog
     AlertDialog alert = AlertDialog(
       title: Text("Simple Alert"),
       content: Text(i == 1? "Update successfully!!!" : "Update failed, please try again later!!!"),
       actions: [
         okButton,
       ],
     );

     // show the dialog
     showDialog(
       context: context,
       builder: (BuildContext context) {
         return alert;
       },
     );
   }

   Future uploadFile() async {

     final fileName = basename(_image.path);
     final destination = 'files/$fileName';

     task = FirebaseApi.uploadFile(destination, _image);
     setState(() {});

     if (task == null) return;

     final snapshot = await task.whenComplete(() {});
     final urlDownload = await snapshot.ref.getDownloadURL();

     print('Download-Link: $urlDownload');
     setState(() {
       imageLink = urlDownload;
       print('Image Path $_image');
     });
   }

   // Future pickImage() async {
   //   final pickedFile = await ImagePicker.pickImage(source: ImageSource.camera);
   //
   //   setState(() {
   //     _image = File(pickedFile.path);
   //   });
   // }

   @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final fileName = _image != null ? basename(_image.path) : 'Not picking image yet';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Edit Profile Page', style: TextStyle(fontSize: 20, color: Colors.black),),
        centerTitle: true,
        leading: BackButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  left: 10, right: 10,
                ),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.only(
                    //topLeft: Radius.circular(20), topRight: Radius.circular(20)
                  )
                ),
                child: ListView(
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 300,
                        width: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)
                            ),
                            border: Border.all(color: Colors.black, width: 1.0),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    imageLink.length != 0 ? imageLink : imageUrl
                                ))
                        ),
                        //padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      ),
                      onTap: ()async{

                      },
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                      child: Row(
                        children: [
                          Container(
                            child: TextButton(
                              child: Text('Choose Image', style: TextStyle(fontSize: 20, color: Colors.black),),
                              onPressed: () async {
                                getImage();
                              },
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              border: Border.all(color: Colors.black, width: 1),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            width: 200,
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Name",
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.red, fontSize: 20),
                        //hintStyle:  TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      validator: (String value){
                        return (value != null) ? 'Must enter name' : null;
                      },
                      onChanged: (String value) {
                        setState(() {
                          userName = value;
                        });
                      },
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.red, fontSize: 20),
                        //hintStyle:  TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      validator: (String value){
                        return (value != null) ? 'Must enter email' : null;
                      },
                      onChanged: (String value) {
                        setState(() {
                          email = value;
                        });
                      },
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Phone',
                        labelText: 'Phone',
                        labelStyle: TextStyle(color: Colors.red, fontSize: 20),
                        //hintStyle:  TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      validator: (String value){
                        return (value != null) ? 'Must enter phone' : null;
                      },
                      onChanged: (String value) {
                        setState(() {
                          phone = value;
                        });
                      },
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter Address',
                        labelText: 'Address',
                        labelStyle: TextStyle(color: Colors.red, fontSize: 20),
                        //hintStyle:  TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      validator: (String value){
                        return (value != null) ? 'Must enter address' : null;
                      },
                      onChanged: (String value) {
                        setState(() {
                          address = value;
                        });
                      },
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter minValue',
                        labelText: 'minValue',
                        labelStyle: TextStyle(color: Colors.red, fontSize: 20),
                        //hintStyle:  TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      validator: (String value){
                        return (value != null) ? 'Must enter minValue' : null;
                      },
                      onChanged: (String value) {
                        setState(() {
                          minValue = value;
                        });
                      },
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter DayOfBirth',
                        labelText: 'DayOfBirth',
                        labelStyle: TextStyle(color: Colors.red, fontSize: 20),
                        //hintStyle:  TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      validator: (String value){
                        return (value != null) ? 'Must enter DayOfBirth' : null;
                      },
                      onChanged: (String value) {
                        setState(() {
                          dayOfBirth = value;
                        });
                      },
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      margin: EdgeInsets.only(
                        right: 40, left: 40, top: 20
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.black, width: 1)
                      ),
                      child: TextButton(autofocus: true,
                        child: Text('Edit', style: TextStyle(fontSize: 25, color: Colors.red, fontWeight: FontWeight.bold),),
                        onPressed: ()async{
                          // var id ="73afe2b8-c42e-4029-8ffc-744b7e18e4c6";
                          var id = await Share().getToken("userID");
                          await UpdateApiService().updateProfileById(id,userName,email,phone,address,minValue,dayOfBirth,imageLink.length != 0 ? imageLink : imageUrl);
                        },
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
}
