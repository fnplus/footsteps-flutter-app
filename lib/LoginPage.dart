import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height:650,
            child:RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.deepPurple,Colors.deepPurple.shade200],
                    [Colors.indigo.shade200,Colors.purple.shade200],
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
                height:400,
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:<Widget>[
                    Text("Login",textAlign:TextAlign.center,style:TextStyle(
                      color:Colors.white70,
                      fontWeight:FontWeight.bold,
                      fontSize:28.0,
                    )),
                    Card(
                      margin:EdgeInsets.only(left: 30,right:30,top:30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration:InputDecoration(
                          prefixIcon:Icon(Icons.person,color:Colors.black38),
                          hintText: "Email",
                          hintStyle: TextStyle(color:Colors.black38),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide:BorderSide.none,
                            borderRadius:BorderRadius.all(Radius.circular(40.0)),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal:20.0, vertical:16.0)
                        ),
                      ),
                    ),
                    Card(
                      margin:EdgeInsets.only(left: 30,right:30,top:30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        obscureText: true,
                        decoration:InputDecoration(
                          prefixIcon:Icon(Icons.person,color:Colors.black38),
                          hintText: "Password",
                          hintStyle: TextStyle(color:Colors.black38),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide:BorderSide.none,
                            borderRadius:BorderRadius.all(Radius.circular(40.0)),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal:20.0, vertical:16.0)
                        ),
                      ),
                    ),
                    Container(
                      width:double.infinity,
                      padding:EdgeInsets.all(30.0),
                      child:RaisedButton(
                        padding: EdgeInsets.symmetric(vertical:16.0),
                        color: Colors.pink,
                        onPressed: (){},
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(40.0))),
                        child: Text("Login",style:TextStyle(
                          color:Colors.white70
                        )),
                      ),
                    ),
                    Text("Forgot your Password?",style:TextStyle(
                      color:Colors.white70
                    ))
                  ],
                ),
              ),
              SizedBox(height:100,),
              Align(
                alignment:Alignment.bottomCenter,
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children:<Widget>[
                    Text("or, connect with"),
                    SizedBox(height:20.0),
                    Row(
                      children:<Widget>[
                        SizedBox(width:20.0,),
                        Expanded(
                          child:RaisedButton(
                            child:Text("Google"),
                            textColor:Colors.white,
                            color:Colors.red.shade900,
                            shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.all(Radius.circular(40)),
                            ),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(width:10.0,),
                        Expanded(
                          child:RaisedButton(
                            child:Text("Github"),
                            textColor:Colors.white,
                            color:Colors.black87,
                            shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.all(Radius.circular(40)),
                            ),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(width:20.0,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Don't have an account?"),
                        FlatButton(child: Text("Sign up"),textColor: Colors.indigo,onPressed: (){},)
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