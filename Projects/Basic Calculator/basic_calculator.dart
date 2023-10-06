

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: MiniCal()));
}

class MiniCal extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => CalMain();
}


class CalMain extends State<MiniCal>{
  var ValueHoldingController_1 = TextEditingController();
  var ValueHoldingController_2 = TextEditingController();
  var Result  = "";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(Icons.calculate_sharp),
            SizedBox(width: 10,),
            Text('Calculator', style: TextStyle(color: Colors.white, fontSize: 24),)
          ],
        ),
      ),


      body:
      Container(
      color: Colors.black,
      child: Center(child:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: ValueHoldingController_1,
              decoration:  InputDecoration(
                  fillColor: Colors.white70,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),) ),),


            TextField(
              keyboardType: TextInputType.number,
              controller: ValueHoldingController_2,
              decoration:  InputDecoration(
                  fillColor: Colors.white70,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),) ),),
            Padding(
              padding: const EdgeInsets.all(21.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                ElevatedButton(onPressed: () {
                  var Value1 = int.parse(ValueHoldingController_1.text.toString());
                  var Value2 = int.parse(ValueHoldingController_2.text.toString());
                  var Addition =  Value1 + Value2;
                  Result = "The sum is: $Addition";
                  setState(() {

                  });

                  }, child: const Text('Add')),
                ElevatedButton(onPressed: () {
                  var Value1 = int.parse(ValueHoldingController_1.text.toString());
                  var Value2 = int.parse(ValueHoldingController_2.text.toString());
                  var Subtraction =  Value1 - Value2;
                  Result = "The diff is: $Subtraction";
                  setState(() {});}
                    , child: const Text('Sub')),
                ElevatedButton(onPressed: () {
                  var Value1 = int.parse(ValueHoldingController_1.text.toString());
                  var Value2 = int.parse(ValueHoldingController_2.text.toString());
                  var Multiply =  Value1 * Value2;
                  Result = "The multiply is: ${Multiply.toStringAsFixed(2)}";
                  setState(() {});}
                , child: const Text('Mul')),
                ElevatedButton(onPressed: () {
      var Value1 = int.parse(ValueHoldingController_1.text.toString());
      var Value2 = int.parse(ValueHoldingController_2.text.toString());
      var Divide =  Value1 / Value2;
      Result = "The div is: ${Divide.toStringAsPrecision(2)}";
      setState(() {});
                }, child: const Text('Dev')),
              ],),
            )
          ,Text('Result', style: TextStyle(color: Colors.white, fontSize: 45, fontFamily: 'FontMain'),),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(Result, style: TextStyle(color: Colors.white, fontSize: 45, fontFamily: 'FontMain'),),
            )
          ],
        ),
      )),),
    );
  }

}