
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model_for_getapi.dart';
import 'package:flutter_beaudee_app_ver1/models/share_refefence_model.dart';

class UpdateApiService{
  Dio dio = Dio();

  Future <List<UserForGet>> updateProfileById(String id,String name, String email, String phone, String address,String minValue,String dayOfBirth, String image) async {
    String url = "https://beaudeeproject.azurewebsites.net/Users/Update?id=${id}";
    String authToken = await Share().getToken('tokenCuaKhai');
    // print({
    //   id,
    //   name,
    //   email,
    //   phone,
    //   address,
    //   int.parse(minValue),
    //   image,
    //   authToken,
    //   dayOfBirth,
    //   url,
    //   tokenFirebase
    // });
    final res = await dio.put(url, data: {
      "name": name,
      "email": email,
      "phone": phone,
      "address": address,
      "minValue": minValue,
      "dayOfBirth": "1999-05-01T15:56:00.427",
      "image": image
    }, options: Options(headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $authToken',
    }));
    if(res.statusCode == 201)
      {
        final result = res.data;
        Iterable list = result['data'];
        var test1 = list.map((user) => UserForGet.fromJson(user)).toList();
        // list.map((user)=>print(user));
        return test1;
      }
    else{
      print(res.statusMessage);
    }
  }


}