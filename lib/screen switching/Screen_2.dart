
import 'package:flutter/material.dart';
import 'package:learn1_1/screen%20switching/Screen_1.dart';

class Screen_2 extends StatelessWidget {
  const Screen_2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('2nd Screen')),
        ),
      body: Container(
        color: Colors.black,
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome', style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.w900),),
              SizedBox(height: 11,),
              ElevatedButton(onPressed: (){
                // Using Navigator to navigate to another page
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => Screen_1()));

              }, child: Text('Switch') )
            ],
          ),
        ),
      ),
      ),
    );
  }
}
