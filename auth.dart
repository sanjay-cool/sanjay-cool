import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tech_comprehension/home.dart';
import 'package:tech_comprehension/signin.dart';
import 'package:tech_comprehension/User.dart';

import 'User.dart';


class AuthenticationPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context,snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
      }
      else if (snapshot.hasData) {

        return HomePage();
        }
      else if (snapshot.hasError){
        return Center(child: Text('Something Went Wrong'),);
        }
      else {
        return SignIn();
        }
      },
    ),

  ) ;


}












