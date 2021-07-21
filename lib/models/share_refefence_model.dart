import 'package:shared_preferences/shared_preferences.dart';

class Share{
  Future<bool> setToken(String name,String value) async {
    // gets new id
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(name, value); //token cua khai la token cua app(cua a huy)
  }

  Future<String> getToken(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //var token = prefs.getString('token');
    return prefs.getString(name);
  }
}