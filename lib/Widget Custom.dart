
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn1_1/uis/util.dart';
import 'package:learn1_1/widgets/rounded_btn.dart';

void main(){runApp(widg());}

class widg extends StatefulWidget {
  const widg({super.key});

  @override
  State<widg> createState() => _widgState();
}

class _widgState extends State<widg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom widget',

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Wid_cust"),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: Container(
                width: 150,
                child: RoundedButton(btnName: 'Play', icon: Icon(Icons.play_arrow), callback: (){
                  print('Logged In');
                },
                  textStyle: fitcustomui34(),
                ),

              ),
            ),
            Container(
              height: 4,
            ),
            Center(
              child: Container(
                width: 160,
                child: RoundedButton(btnName: 'Pause', icon: Icon(Icons.pause), callback: (){
                  print('Logged In');
                },
                  bgColor: Colors.yellow,
                  textStyle: fitcustomui34(),
                ),

              ),
            ),
          ],
        )
        // Center(
        //   child: Container(
        //     width: 150,
        //     child: RoundedButton(btnName: 'Login', icon: Icon(Icons.lock), callback: (){
        //           print('Logged In');
        //           },
        //     textStyle: fitcustomui34(),
        //     ),
        //   ),
        // )
      ),
    );
  }
}
