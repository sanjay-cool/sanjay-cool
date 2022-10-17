import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_comprehension/Google%20sign%20in.dart';
import 'package:tech_comprehension/home.dart';
import 'package:tech_comprehension/test.dart';
import 'package:tech_comprehension/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tech_comprehension/Google sign in.dart';
import 'package:tech_comprehension/home.dart';
import 'home.dart';
import 'widgets.dart';
import 'auth.dart';
import 'dart:developer';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late String email, password;

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return Scaffold(
        appBar: AppBar(
          title: appBar(context),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          // ignore: deprecated_member_use
          brightness: Brightness.light,
        ),
        resizeToAvoidBottomInset: false,
        body: Form(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const Spacer(),
                TextFormField(
                  validator: (val) {

                  },
                  decoration:  InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    contentPadding: EdgeInsets.fromLTRB(30,15,30,15),
                      hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 6,
                ),

                TextFormField(
                  autofocus: false,
                  obscureText: true,

                  validator: (val) {

                  },
                  decoration:  InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      contentPadding: EdgeInsets.fromLTRB(20,15,20,15),
                      hintText: "Password",
                      border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                  ),
                  onChanged: (val) {
                    password = val;
                  },
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 300,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 48,
                  child: ElevatedButton(
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                      provider.googleLogin();


                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Test()),
                      );
                    },
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ));
  }
}
