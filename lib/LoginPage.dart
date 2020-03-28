import 'package:flutter/material.dart';
import 'package:footstep/Password.dart';
import 'home.dart';
import 'package:footstep/utils/firebase_auth.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'SignUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uni_links/uni_links.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key key}) : super(key: key);
  StreamSubscription _subs;

  @override
  void initState() {
    _initDeepLinkListener();
    initState();
  }
  @override
  void dispose() {
    _disposeDeepLinkListener();
    dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children:<Widget>[
              SizedBox(height:30),
              Image(image: AssetImage('images/logo.png'),height: 180,width: 350,),
              Container(
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget>[ 
                    SizedBox(height:20),
                    Text("Hi There! Welcome back",style: new TextStyle(fontSize: 27.0,color: Colors.green.shade800)),
                    Container(
                      width:double.infinity,
                      padding:EdgeInsets.only(left:30.0,right: 30.0,bottom: 20.0,top: 40),
                      child:RaisedButton(
                        padding: EdgeInsets.symmetric(vertical:16.0),
                        color: Colors.red.shade900,
                        onPressed: ()async{
                          bool res = await AuthProvider().loginWithGoogle();
                          if(!res)
                          print("error logging in with google");
                          else{
                            Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context)=>HomePage()),
                          );
                          }
                        },
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(12.0))),
                        child: Text("Login with Gmail",style:TextStyle(
                          color:Colors.white
                        )),
                      ),
                    ),
                    
                    Container(
                      width:double.infinity,
                      padding:EdgeInsets.only(left:30.0,right:30.0,bottom:20.0),
                      child:RaisedButton(
                        padding: EdgeInsets.symmetric(vertical:16.0),
                        color: Colors.black,
                        onPressed: (){
                          onClickGitHubLoginButton();
                        },
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(12.0))),
                        child: Text("Login with GitHub",style:TextStyle(
                          color:Colors.white
                        )),
                        
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      padding:EdgeInsets.only(left:30.0,right:30.0,bottom:30.0),
                      child:RaisedButton(
                        padding: EdgeInsets.symmetric(vertical:16.0),
                        color: Colors.green.shade800,
                        onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>Password()),
                        );
                        },
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(12.0))),
                        child: Text("Login with Email",style:TextStyle(
                          color:Colors.white
                        )),
                        
                      ),
                    ),
                    
                    
                   
                  ],
                ),
              ),
              Align(
                alignment:Alignment.bottomCenter,
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children:<Widget>[
                    
                        
                         Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        
                        Text("New to Footstep?"),
                        FlatButton(child: Text("Create Your Account"),textColor: Colors.indigo,onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>SignUp()),
                        );
                      },)
                      ],
                    )
                      
                    
                    
                   
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      
    );
  }

    
  // ...

  void _initDeepLinkListener() async {
    _subs = getLinksStream().listen((String link) {
      _checkDeepLink(link);
    }, cancelOnError: true);
  }

  void _checkDeepLink(String link) {
    if (link != null) {
      String code = link.substring(link.indexOf(RegExp('code=')) + 5);
      loginWithGitHub(code)
        .then((firebaseUser) {
          print("LOGGED IN AS: " + firebaseUser.displayName);
        }).catchError((e) {
          print("LOGIN ERROR: " + e.toString());
        });
    }
  }

  void _disposeDeepLinkListener() {
    if (_subs != null) {
      _subs.cancel();
      _subs = null;
    }
  }
}
void onClickGitHubLoginButton() async {
  const String GITHUB_CLIENT_ID="CLIENT-ID";
  const String url = "https://github.com/login/oauth/authorize" +
      "?client_id=" + GITHUB_CLIENT_ID +
      "&scope=public_repo%20read:user%20user:email";

  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
    );
  } else {
    print("CANNOT LAUNCH THIS URL!");
  }
}

Future<FirebaseUser> loginWithGitHub(String code) async {
  //ACCESS TOKEN REQUEST
  final response = await http.post(
    "https://github.com/login/oauth/access_token",
    headers: {
      "Content-Type": "application/json",
      "Accept": "application/json"
    },
    body: jsonEncode(GitHubLoginRequest(
      clientId: "CLIENT-ID",
      clientSecret: "CLIENT-SECRET"
 ,
      code: code,
    )),
  );

  GitHubLoginResponse loginResponse =
      GitHubLoginResponse.fromJson(json.decode(response.body));

  //FIREBASE STUFF
  final AuthCredential credential = GithubAuthProvider.getCredential(
    token: loginResponse.accessToken,
  );

  final AuthResult res = await FirebaseAuth.instance.signInWithCredential(credential);
  if(res.user != null)
        return  res.user;
      
}
// ...
//GITHUB REQUEST-RESPONSE MODELS
class GitHubLoginRequest {
  String clientId;
  String clientSecret;
  String code;

  GitHubLoginRequest({this.clientId, this.clientSecret, this.code});

  dynamic toJson() => {
        "client_id": clientId,
        "client_secret": clientSecret,
        "code": code,
      };
}

class GitHubLoginResponse {
  String accessToken;
  String tokenType;
  String scope;

  GitHubLoginResponse({this.accessToken, this.tokenType, this.scope});

  factory GitHubLoginResponse.fromJson(Map<String, dynamic> json) =>
      GitHubLoginResponse(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        scope: json["scope"],
      );
}
