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
        title: Text("Margin/padding"),
      ),
      body:  Container(
        color: Colors.blueGrey,
          // Margin implementation
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Text('Hello dunia!', style:  TextStyle(fontSize: 25),),
          ))

      // Container(
      //   color: Colors.amberAccent,
      //
      //   child: Padding(
      //     //In padding use 'only' for custom padding
      //     // padding: EdgeInsets.only(top 100),
      //     // Use 'all' for all side padding
      //     padding: EdgeInsets.all(100),
      //     child: Text('Hello dunia!', style:  TextStyle(fontSize: 25),),
      //   ),
      // )

    );
  }

}