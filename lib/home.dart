import 'package:flutter/material.dart';
import 'package:footstep/utils/firebase_auth.dart';
import 'package:footstep/LoginPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Home page"),
            RaisedButton(
              child: Text("Log out"),
              onPressed: (){
                AuthProvider().logOut();
                Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context)=>LoginPage()),
                          );
              },
            )
          ],
        ),
      ),
    );
  }
}