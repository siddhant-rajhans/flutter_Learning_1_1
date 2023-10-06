import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MaterialApp( home: dayte(),
debugShowCheckedModeBanner: false,));

class dayte extends StatefulWidget{
  @override
  datime createState()  => datime();
}

class datime extends State<dayte>{
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Current Date and time',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),

      home: Scaffold(
        appBar: AppBar(title: const Text('Day time fetch')),
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Time picker', style: TextStyle(color: Colors.blue, fontSize: 34),),
              ElevatedButton(onPressed: () async {
                //Waiting for the output, then cant't run this process on main thread. Hence, used async
                // showDatePicker has 4 attribute
                // DateTime is a certain data type to define the output in that format
                // ? is uesd to get not null
                //await is used to wait for the result. 2[future class | await] can be used in this
                DateTime? datePicked = await showDatePicker(

                    context: context,
                    // Current date
                    initialDate: DateTime.now(),
                    //First possible date to select
                    firstDate: DateTime(2021),
                    // Last possible date to select
                    lastDate: DateTime(2025));
                if(datePicked!=null){
                print('date selected: ${datePicked.day} -${datePicked.month} -${datePicked.year}');}
              }, child: Text('Show', style: TextStyle(fontSize: 30),)),
              ElevatedButton(onPressed: () async {
                TimeOfDay? pickedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now(),
                //Defaut timepicker is dial
                initialEntryMode: TimePickerEntryMode.input

                );
                if(pickedTime!= null){
                  print('time selected: ${pickedTime.hour} : ${pickedTime.minute}  ');
                }
              }
              , child: Text('select time', style: TextStyle(fontSize: 30),))
            ],
          ),
        )));
  }

}