import 'package:dio/dio.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model.dart';
import 'package:flutter_beaudee_app_ver1/view_models/user_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_beaudee_app_ver1/models/share_refefence_model.dart';

class PostApiService {
  Dio dio = Dio();

  Future<List<User>> postAuth(String token) async {
    print(token);
    String url = "https://beaudeeproject.azurewebsites.net/Users/Authenticate";
    final response = await dio.post(url, data: {"token": token}, options: Options(headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    }));
    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['data'];
      var test = list.map((user) => User.fromJson(user)).toList();
      await Share().setToken('tokenCuaToi',test[0].token);
      await Share().setToken('userID',test[0].id);
      print( await Share().getToken("tokenCuaToi"));
      return list.map((user) => User.fromJson(user)).toList();
    } else {
      print("abc");
      print(response.statusCode);
      throw Exception('Failed to post auth');
    }
  }
}
