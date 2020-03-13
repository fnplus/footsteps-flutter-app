import 'package:flutter/material.dart';
import 'package:footstep/ForgotPassword.dart';
import 'package:wave/wave.dart';
import 'package:wave/config.dart';


class Password extends StatelessWidget {
  const Password({Key key}) : super(key: key);

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
              SizedBox(height:100),
              Image(image: AssetImage('images/logo.png'),height: 200,width: 400,),
             Container(
                          margin: EdgeInsets.only(left:15,right:15,top:100),
                          child: Form(
                            child: Column(
                              children:<Widget>[
                                new TextFormField(
                                  obscureText: true,
                                  decoration: new  InputDecoration(
                                    hintText: 'Enter your Password',
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
                                SizedBox(height:15),
                                FlatButton(
                                  onPressed: (){},
                                  color: Colors.green.shade700,
                                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(40.0))),
                                  child: Text("Log In",style:TextStyle(
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
                          MaterialPageRoute(builder: (context)=>ForgotPassword()),
                        );
                        }, child: Text("Forgot Password?",style: TextStyle(color:Colors.green),)),
                   
                  ],
          ),
              
            ],
          ),
        
      );
    
  }
}

