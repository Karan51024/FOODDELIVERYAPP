import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/bottomnav.dart';
import 'package:fooddeliveryapp/pages/home.dart';
import 'package:fooddeliveryapp/pages/login.dart';
import 'package:fooddeliveryapp/pages/onboard.dart';
import 'package:fooddeliveryapp/pages/signup.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(),
      home: Onboard()
    );
  }
}

