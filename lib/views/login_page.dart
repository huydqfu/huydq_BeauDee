import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beaudee_app_ver1/view_models/login_view_model.dart';
import 'package:flutter_beaudee_app_ver1/views/update_profile.dart';
import 'package:sign_button/sign_button.dart';
//import 'package:getwidget/getwidget.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_beaudee_app_ver1/views/home_page.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget _FacebookSignInButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SignInButton(
            // buttonType: ButtonType.facebook,
            // buttonSize: ButtonSize.small, // small(default), medium, large
            buttonType: ButtonType.facebook,
            imagePosition: ImagePosition.left,
            //[buttonSize] You can also use this in combination with [width]. Increases the font and icon size of the button.
            buttonSize: ButtonSize.small,
            btnTextColor: Colors.white,
            btnColor: Colors.blue,
            width: 110,
            //150
            //[width] Use if you change the text value.
            btnText: 'Facebook',
            onPressed: (){
              signInWithFacebook().then((result) {
                if (result != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                }
              });
            }
        )
      ],
    );
  }

  Widget _GmailSignInButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SignInButton(
            // buttonType: ButtonType.google,
            // buttonSize: ButtonSize.small, // small(default), medium, large
            buttonType: ButtonType.googleDark,
            imagePosition: ImagePosition.left,
            //[buttonSize] You can also use this in combination with [width]. Increases the font and icon size of the button.
            buttonSize: ButtonSize.small,
            btnTextColor: Colors.white,
            btnColor: Colors.red,
            width: 110,
            //150
            //[width] Use if you change the text value.
            btnText: 'Google',
            onPressed: () {
              signInWithGoogle().then((result) {
                if (result != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ),
                  );
                }
              });
            }),
      ],
    );
  }

  Widget _BuildButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         _FacebookSignInButton(),
         SizedBox(width: 15),
         _GmailSignInButton()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            //Image.asset('start_image.png', width: 390, height: 900, fit: BoxFit.fill,)
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffcff2ee),
                    spreadRadius: 0.5,
                    blurRadius: 0.5,
                  ),
                ],
              ),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(60.0)
                    ),
                    child: Image.asset('start_image.png',  fit: BoxFit.fitHeight, cacheHeight: 600, cacheWidth: 550,),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            // ClipRRect(
            //   borderRadius: BorderRadius.only(
            //     bottomLeft: const Radius.circular(60.0)
            //   ),
            //   child: Image.asset('start_image.png',  fit: BoxFit.cover, cacheHeight: 420, cacheWidth: 397,),
            // ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
              child: RichText(
                text: TextSpan(
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: "Hello ", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300)),
                    TextSpan(text: "Beautiful", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
                  ]
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 50, 0),
              child: Text(
                "Hope you can feel this warm hug from us and enjoy the beauty journey that we bring to you,"
                    "as long as you want, we always here to deliver your beauty. Love!",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 80, 30, 0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign in with phone number',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  color: Color(0xffe63746),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40))
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Column(
              children: <Widget>[
                _BuildButton()
              ],
            )
          ],
        ),
      ),
    );
  }
}

