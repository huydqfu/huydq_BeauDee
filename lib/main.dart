import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beaudee_app_ver1/views/ScreenStart/splashScreen.dart';
import 'package:flutter_beaudee_app_ver1/views/login_page.dart';
import 'package:flutter_beaudee_app_ver1/views/update_profile.dart';

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//         primaryColor: Colors.red
//     ),
//     home: LoginPage()));
// }

void main() async {
  //await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red
      ),
      home: Scaffold(
        //body: SetRolePage(),
        body: SplashScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}