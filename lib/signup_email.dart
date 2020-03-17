import 'package:flutter/material.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';

import 'LoginPage.dart';


class Signup_email extends StatelessWidget {
  const Signup_email({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height:450,
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
              SizedBox(height:60),
              Image(image: AssetImage('images/logo.png'),height: 180,width: 350,),
             Container(
                          margin: EdgeInsets.only(left:15,right:15,top:100),
                          child: Form(
                            child: Column(
                              children:<Widget>[
                               Material(
                                  elevation: 10.0,
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  child: TextField(
                                    onChanged: (String value){},
                                    cursorColor: Colors.green.shade700,
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        prefixIcon: Material(
                                          elevation: 0,
                                          borderRadius: BorderRadius.all(Radius.circular(30)),
                                          child: Icon(
                                            Icons.email,
                                            color: Colors.green.shade700,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        contentPadding:
                                            EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                  ),
                                ),
                                SizedBox(height:15),
                                Material(
                                    elevation: 10.0,
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    child: TextField(
                                      obscureText: true,
                                      onChanged: (String value){},
                                      cursorColor: Colors.green.shade700,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          prefixIcon: Material(
                                            elevation: 0,
                                            borderRadius: BorderRadius.all(Radius.circular(30)),
                                            child: Icon(
                                              Icons.lock,
                                              color: Colors.green.shade700,
                                            ),
                                          ),
                                          border: InputBorder.none,
                                          contentPadding:
                                              EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                                    ),
                                  ),
                                SizedBox(height:15),
                                FlatButton(
                                  
                                  onPressed: (){},
                                  color: Colors.green.shade700,
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(40.0))),
                                  child: Text("Sign Up",style:TextStyle(
                                    color:Colors.white
                                  )),
                                ),
                              ]
                            ),
                          ),
                        ),
                        FlatButton(onPressed: (){
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>LoginPage()),
                        );
                          
                        }, child: Text("Already have an account!",style: TextStyle(color:Colors.green),)),
                   
                  ],
          ),
              
            ],
          ),
        
      );
    
  }
}

