import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //this override is initializing state, to set up starting action.

  @override
  void initState() {
    super.initState();
    //Timer is a fuction to set an action for a duration
    Timer(const Duration(seconds: 2),(){
      // Here we are using Navigator.pushReplacement for one time calling.
      //pushReplacement will remove this from stack
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeApp() , ));
    } );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        // height: 100,
        child: Image.asset('assets/images/creative.png', fit: BoxFit.cover),
      ),
    );
  }
}


