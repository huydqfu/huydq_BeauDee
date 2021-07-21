
import 'package:flutter_beaudee_app_ver1/models/service_model.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model_for_getapi.dart';
import 'package:flutter_beaudee_app_ver1/services/post_api_service.dart';
import 'package:flutter_beaudee_app_ver1/models/user_model.dart';
import 'package:flutter_beaudee_app_ver1/view_models/login_view_model.dart';
import 'package:flutter_beaudee_app_ver1/models/auth_model.dart';
import 'package:flutter_beaudee_app_ver1/services/get_api_service.dart';
import 'package:flutter_beaudee_app_ver1/models/share_refefence_model.dart';

String userToken;
String name;

class UserViewModel{


  Auth auth;

  UserViewModel({Auth auth}) : auth = auth;

  set token(String token){
    auth.token = token;
  }

  String get token {
    return token;
  }

  Future<String> getUserToken(String token) async{
    return auth.token = token;
    //return currentUser.getIdToken = userToken;
  }


  Future<List<User>> getUser(fireBaseToken) async{
    return PostApiService().postAuth(fireBaseToken);
  }

  Future<List<UserForGet>> getArtist(serviceName) async{
    return GetApiService().getArtistByService(serviceName);
  }

  Future<List<UserForGet>> getSingleArtist(uid) async{
    return GetApiService().getSingleArtistByUid(uid);
  }
}
