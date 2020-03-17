import 'package:flutter/material.dart';
import 'package:footstep/LoginPage.dart';
import 'package:footstep/signup_email.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    Text("Let's Get Started!",style: new TextStyle(fontSize: 27.0,color: Colors.green.shade800)),
                    Container(
                      width:double.infinity,
                      padding:EdgeInsets.only(left:30.0,right: 30.0,bottom: 20.0,top: 40),
                      child:RaisedButton(
                        padding: EdgeInsets.symmetric(vertical:16.0),
                        color: Colors.red.shade900,
                        onPressed: (){},
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(12.0))),
                        child: Text("Sign Up with Gmail",style:TextStyle(
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
                        child: Text("Sign Up with GitHub",style:TextStyle(
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
                          MaterialPageRoute(builder: (context)=>Signup_email()),
                        );
                          
                        },
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(12.0))),
                        child: Text("Sign up with Email",style:TextStyle(
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
                        
                        Text("Already a part of FootSteps?"),
                        FlatButton(child: Text("Login "),textColor: Colors.indigo,onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>LoginPage()),
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

