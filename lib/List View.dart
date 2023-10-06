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
          title: Text("ListView and builder"),
        ),
        body: Center(
          // Using ListView, it contains both rows and columns. Cannot use both at once though
          child: ListView(
            //To make the list scool in horizontal ----- . Default vertical |||| and If used vertical + reverse it will start from bottom-left
            scrollDirection: Axis.vertical,
            //To reverse the order of the list
           //reverse: true,

            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('One', style: TextStyle(fontSize:19, fontWeight: FontWeight.w500 ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('two', style: TextStyle(fontSize:19, fontWeight: FontWeight.w500 ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('three', style: TextStyle(fontSize:19, fontWeight: FontWeight.w500 ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('four', style: TextStyle(fontSize:19, fontWeight: FontWeight.w500 ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('V', style: TextStyle(fontSize:19, fontWeight: FontWeight.w500 ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('VI', style: TextStyle(fontSize:19, fontWeight: FontWeight.w500 ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('VII', style: TextStyle(fontSize:19, fontWeight: FontWeight.w500 ),),
              ),

            ],
          ),
        )
        
    );
  }

}