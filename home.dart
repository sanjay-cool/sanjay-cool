import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_comprehension/Google%20sign%20in.dart';
import 'package:tech_comprehension/test.dart';
import 'package:tech_comprehension/easy_main.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: (Text('Level Selection')),
          centerTitle: true,
          actions: [
            TextButton(
              child: Text('Logout'),
              onPressed: (){
                final provider = Provider.of<GoogleSignInProvider>(context,listen:false);
                provider.logout();

              },)
          ],
        ),

        body: Container(

          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  RaisedButton(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 30),
                      child: Text("Easy", style: TextStyle(fontSize: 20),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Test()),
                        );

                      }
                  ),

            ]),
          ),

        ),

      ),
    );
  }

}

