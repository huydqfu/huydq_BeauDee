import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as JSON;
import 'package:flutter_beaudee_app_ver1/view_models/user_view_model.dart';
import 'package:flutter_beaudee_app_ver1/models/share_refefence_model.dart';


// Google Login
final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String uid;
String email;
String imageUrl;
String reToken;
int isLoggedIn = 0;

Future<String> signInWithGoogle() async {
  await Firebase.initializeApp();

  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
  await googleSignInAccount.authentication; // cho nao goi len google gui user với pass

  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final UserCredential authResult = await _auth.signInWithCredential(credential);
  //print(authResult);
  final User user = authResult.user;

  if (user != null) {
    // Checking if email and name is null
    assert(user.email != null);
    assert(user.photoURL != null);
    assert(user.uid != null);

    uid = user.uid;
    email = user.email;
    imageUrl = user.photoURL;


    isLoggedIn = 2; //Log in with google

    // Only taking the first part of the name, i.e., First Name

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final currentUser = _auth.currentUser;
    final idToken = await currentUser.getIdToken();
    userToken = idToken;
    Share().setToken('tokenFirebase', userToken);//
    //token firebase
    print(idToken);
    //print('$user');
    return '$user';

  }

  return null;
}

Future<void> signOutGoogle() async {
  await googleSignIn.signOut();
  isLoggedIn = 0;
}


//Facebook Login
Map userProfile;
final facebookLogin = FacebookLogin();
Future signInWithFacebook() async {
  final FacebookLoginResult result = await facebookLogin.logIn(["email"]);
  final String token = result.accessToken.token;
  final response = await http.get('https://graph.facebook.com/v2.12/me?fields=name,picture,email,id&access_token=${token}');
  final profile = JSON.jsonDecode(response.body);
  print(profile);
  userProfile = profile;
  imageUrl = userProfile["picture"]["data"]["url"];
  email = userProfile["email"];
  uid = userProfile["id"];
  //userToken = token;

  isLoggedIn = 1;// Log in with facebook
  return profile;
}

Future<void> signOutFacebook() async {
  facebookLogin.logOut();
  isLoggedIn = 0;

}