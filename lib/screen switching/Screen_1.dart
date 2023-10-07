import 'package:flutter/material.dart';

import 'Screen_2.dart';

main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: Screen_2()));
}
class Screen_1 extends StatelessWidget {
  const Screen_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text('Intro', style: TextStyle(fontWeight: FontWeight.w900),)),
      ),
      body:  Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome to screen 1', style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.w900),),
              // SizedBox(height: 11,),
              // ElevatedButton(onPressed: (){}, child: Text('Switch') )
            ],
          ),
        ),
      ),
    );
  }
}
