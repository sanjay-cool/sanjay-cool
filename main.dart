import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_comprehension/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tech_comprehension/Google sign in.dart';
// Import the generated file
import 'firebase_options.dart';

import 'signin.dart';

 void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp1());
}



class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),

    child:  MaterialApp(
      title: 'SOOT SEPARATOR ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    ),
  );

}
