import 'package:LinuxOS_App/animation.dart';
//import 'package:LinuxOS_App/console.dart';
import 'package:LinuxOS_App/home.dart';
import 'package:LinuxOS_App/home1.dart';
import 'package:LinuxOS_App/login.dart';
import 'package:LinuxOS_App/reg.dart';
import 'package:LinuxOS_App/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'splash',
    routes: {
      'home1': (context) => MyHome1(),
      'splash': (context) => MyApp(),
      'animation': (context) => MyAni(),
      'home': (context) => MyHome(),
      'reg': (context) => MyReg(),
      'login': (context) => MyLogin(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
