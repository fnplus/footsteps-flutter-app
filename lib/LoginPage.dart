import 'package:flutter/material.dart';
import 'package:footstep/Password.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';
import 'SignUpPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height:550,
            child:RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.green.shade400,Colors.green.shade700],
                    [Colors.green.shade200,Colors.lightGreen.shade100],
                  ],
                  durations: [19440,10800],
                  heightPercentages: [0.20,0.25],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.bottomRight,
                ),
                waveAmplitude: 0,
                size: Size(
                  double.infinity,
                  double.infinity,
                ),
              ),
            ),
          ),
          ListView(
            children:<Widget>[
              Container(
                height:570,
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget>[
                    SizedBox(height:30),
                    Text("Welcome Back!",textAlign:TextAlign.center,style:TextStyle(
                      color:Colors.green.shade900,
                      fontWeight:FontWeight.bold,
                      fontSize:28.0,
                    )),
                    
                    
                    Container(
                      width:double.infinity,
                      padding:EdgeInsets.all(30.0),
                      child:RaisedButton(
                        padding: EdgeInsets.symmetric(vertical:16.0),
                        color: Colors.red.shade900,
                        onPressed: (){},
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(40.0))),
                        child: Text("Login with Gmail",style:TextStyle(
                          color:Colors.white
                        )),
                      ),
                    ),
                    
                    Container(
                      width:double.infinity,
                      padding:EdgeInsets.only(left:30.0,right:30.0,bottom:30.0),
                      child:RaisedButton(
                        padding: EdgeInsets.symmetric(vertical:16.0),
                        color: Colors.blue.shade800,
                        onPressed: (){},
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(40.0))),
                        child: Text("Login with Facebook",style:TextStyle(
                          color:Colors.white
                        )),
                      ),
                    ),
                    SizedBox(height: 70.0),
                    Text("or, connect with ",style:TextStyle(
                      color:Colors.black,
                    )),
                    Container(
                          margin: EdgeInsets.only(left:15,right:15,top:15),
                          child: Form(
                            child: Column(
                              children:<Widget>[
                                new TextFormField(
                                  
                                  decoration: new  InputDecoration(
                                    hintText: 'Enter your email',
                                    fillColor: Colors.green,
                                    border:  new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(25.0),
                                      borderSide: new BorderSide(),
                                    ),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                    style: new TextStyle(
                                      fontFamily: "Poppins",
                                    ),
                                ),
                                SizedBox(height:5),
                                FlatButton(
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context)=>Password()),
                                    );
                                  },
                                  color: Colors.green.shade700,
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(40.0))),
                                  child: Text("Next",style:TextStyle(
                                    color:Colors.white
                                  )),
                                ),
                              ]
                            ),
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
                        
                        Text("Don't have an account?"),
                        FlatButton(child: Text("Sign up"),textColor: Colors.indigo,onPressed: (){
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

