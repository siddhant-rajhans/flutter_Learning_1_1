import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(expandwidget());
}

class expandwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expapp",
      debugShowCheckedModeBanner: false,
      home: mainlyHome(),
    );

  }
}
class mainlyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("ExpWidg"),
    ),
      body: Row(
        children: [
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           Expanded(
             flex: 1,
             child: Container(
               width: 50,
               height: 100,
               color: Colors.blue,
             ),
           ),
              Container( width: 50,
                height: 100,
                color: Colors.red,),
              Container( width: 50,
                height: 100,
                color: Colors.green,),
              Expanded(
                child: Container( width: 50,
                  height: 100,
                  color: Colors.yellow,),
              )

            ],
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Container( width: 50,
                height: 100,
                color: Colors.red,),
              Container( width: 50,
                height: 100,
                color: Colors.green,),
              Expanded(
                child: Container( width: 50,
                  height: 100,
                  color: Colors.yellow,),
              )

            ],
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Container( width: 50,
                height: 100,
                color: Colors.red,),
              Container( width: 50,
                height: 100,
                color: Colors.green,),
              Expanded(
                child: Container( width: 50,
                  height: 100,
                  color: Colors.yellow,),
              )

            ],
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Container( width: 50,
                height: 100,
                color: Colors.red,),
              Container( width: 50,
                height: 100,
                color: Colors.green,),
              Expanded(
                child: Container( width: 50,
                  height: 100,
                  color: Colors.yellow,),
              )

            ],
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Container( width: 50,
                height: 100,
                color: Colors.red,),
              Container( width: 50,
                height: 100,
                color: Colors.green,),
              Expanded(
                child: Container( width: 50,
                  height: 100,
                  color: Colors.yellow,),
              )

            ],
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 50,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              Container( width: 50,
                height: 100,
                color: Colors.red,),
              Container( width: 50,
                height: 100,
                color: Colors.green,),
              Expanded(
                child: Container( width: 50,
                  height: 100,
                  color: Colors.yellow,),
              )

            ],
          ),
        ],
      ),
    );
  }

}