import 'package:flutter/material.dart';
import 'package:footstep/Password.dart';
import 'home.dart';
import 'package:footstep/utils/firebase_auth.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'SignUpPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

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
                        onPressed: (){},
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
}

