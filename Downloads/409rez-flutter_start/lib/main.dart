import 'dart:async';
import 'dart:convert' show json;
import "package:http/http.dart" as http;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());


GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
    
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  GoogleSignInAccount _currentUser;
  String _contactText;
  bool isLoggedIn=false;
  var profile;

  void initiateFacebookLogin() async {
    var facebookLogin = FacebookLogin();
    var facebookLoginResult =
    await facebookLogin.logInWithReadPermissions(['email']);

    switch (facebookLoginResult.status) {
      case FacebookLoginStatus.error:
        print("Error");
        onLoginStatusChanged(false);
        break;
      case FacebookLoginStatus.cancelledByUser:
        print("CancelledByUser");
        onLoginStatusChanged(false);
        break;
      case FacebookLoginStatus.loggedIn:
        print("LoggedIn");
        onLoginStatusChanged(true);
        var graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${facebookLoginResult
                .accessToken.token}');
        profile = json.decode(graphResponse.body);
        //       print(profile.toString());
        onLoginStatusChanged(true, profileData: profile);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('profile', profile.toString());
        break;
    }
  }

  void checkLogin() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String profile_local=prefs.getString('profile');
    print(profile_local.toString());
    if (profile_local!=null){
      setState(() {
        profile=profile_local;
        this.isLoggedIn = true;

      });
    }
  }

  void onLoginStatusChanged(bool isLoggedIn, {var profileData}) {
    //   print(profileData.toString());
    setState(() {
      this.isLoggedIn = isLoggedIn;
    });
  }

  @override
  void initState() {
    super.initState();
    checkLogin();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
      setState(() {
        _currentUser = account;
      });
      if (_currentUser != null) {
        //  _handleGetContact();
      }
    });
    _googleSignIn.signInSilently();
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    if(_currentUser==null && isLoggedIn==false)
    return Scaffold(
        
     
      body: new Stack(
        children: <Widget>[

           new Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage('images/artboard.png'),
                    fit: BoxFit.cover),
              ),
            ),
                  Container(
        child: Column(
          children: <Widget>[
            Padding(
               padding: const EdgeInsets.only(top: 500.0, left: 100.0, right: 100.0),
              child: RaisedButton(
                
                child: Text("Login with Facebook",textAlign: TextAlign.center,),
                 
                 textColor: Colors.white,
                color: Color(0xFF4364A1),
                onPressed: () => initiateFacebookLogin(),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 100.0, right: 100.0),
              child: RaisedButton(
                 child: Text("Login with Google", textAlign: TextAlign.center),
                 textColor: Colors.white,
                   color: Colors.red,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),

                onPressed: () {
                  _handleSignIn();
                  
                },
              ),
            )
          ],
        ),
      ),
        ],
      ),

    );
    else if(isLoggedIn==false && _currentUser!=null){
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(_currentUser.email),
          Text(_currentUser.displayName)
        ],
      );
    }
    else if(_currentUser==null && isLoggedIn==true){
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Text(profile.toString()),
        ],
      );
    }
  }
}


class GoogleLogin{

}