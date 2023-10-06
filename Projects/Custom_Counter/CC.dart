

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false ,home: CounterCustom()));
}

class CounterCustom extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => CustomLayout();
}


class CustomLayout extends State<CounterCustom>{
      //Taking a variable count for initial val of 0
      var count = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(Icons.calculate_outlined) ,
            Text('Custom Counter', style: TextStyle(fontSize: 25),),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: $count', style: TextStyle(fontSize: 44, color: Colors.white, fontFamily: 'FontMain'),),
            ElevatedButton(onPressed: (){
              //For increment
              // count = count +1;
              // count += 1;
              count++;
              print(count);
              //the value will be updated in the variable not the app interface
              // not to make changes in the UI the build function must be called
              //For that we use //setState
              setState(() {
                //It will refresh the Ui
              //   !!Never use increment after setState()
              });
            }, child: const Text('Add: 1', style: TextStyle(fontSize: 44, color: Colors.white, fontFamily: 'Font2nd'),))
          ],
        ),
      ),
    );
  }
}