import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:learnapp/splash.dart';


void main() {
  runApp(const MyApp());
 WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
   if(Platform.isAndroid){
     await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
   }
 });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
