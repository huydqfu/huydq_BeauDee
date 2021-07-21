import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model.dart';
import 'package:flutter_beaudee_app_ver1/services/post_api_service.dart';
import 'package:flutter_beaudee_app_ver1/view_models/login_view_model.dart';
import 'package:flutter_beaudee_app_ver1/view_models/user_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model_for_getapi.dart';
import 'package:flutter_beaudee_app_ver1/models/share_refefence_model.dart';

class GetApiService {
  Dio dio = Dio();

  Future<List<UserForGet>> getArtistByService(String name) async {
    String url = "https://beaudeeproject.azurewebsites.net/Users/GetAll";

    String authToken = await Share().getToken('tokenCuaToi');
    final response = await dio.get(url, options: Options(headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $authToken',
    }));
    if (response.statusCode == 200) {
      final result = response.data;
      // if(result['data']['role']=="Artist"){
      //   if(result['data']['service']==name){}
      Iterable list = result['data'];
      // print(list);
      // var test1 = list.map((user) => User.fromJson(user)).toList();
      // List<User> test = new List<User>();
      List<UserForGet> test = new List<UserForGet>();
      list.forEach((element) {
        var user = UserForGet.fromJson(element);
        if(user.service.contains(name))
          {
          test.add(user);
          }
      });
      // var test ;
     // list.forEach((element) {
     // list.forEach((element) {
     // var test1 =  User.fromJson(element);
     // if(test1.service.contains(name)){
     //   test.add(test1);
     //   // print(test1);
     //   //user.services []=> có chứa name không
     // }
     // });

      // test = test.map((user) => User.fromJson(user)).toList();
      return test;
    } else {
      throw Exception('Failed to post auth');
    }
  }

  Future<List<UserForGet>> getSingleArtistByUid(String uid) async {
    String url = "https://beaudeeproject.azurewebsites.net/Users/Get/${uid}";

    String authToken = await Share().getToken('tokenCuaToi');
    final response = await dio.get(url, options: Options(headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $authToken',
    }));
    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['data'];
      var test1 = list.map((user) => UserForGet.fromJson(user)).toList();

      return test1;
    } else {
      throw Exception('Failed to post auth');
    }
  }
}
