import 'package:flutter/material.dart';
import 'package:learn1_1/Splash%20Screen/splash.dart';


main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: SplashScreen()));
}
class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
            child: Text('Main', style: TextStyle(fontWeight: FontWeight.w900),)),
      ),

    );
  }
}


