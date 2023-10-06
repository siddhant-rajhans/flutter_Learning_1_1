import 'package:flutter/material.dart';

void main() => runApp( dayte());

class dayte extends StatefulWidget{
  @override
  State<StatefulWidget> createState()  => datime();}

class datime extends State<dayte>{
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Current Date and time',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),

      home: Scaffold(
        appBar: AppBar(title: const Text('Day time fetch')),
        body:  Center(
          child: Container(
            width: 200,
            height: 200,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Current Time: ${time.hour}:${time.minute}:${time.second}' , style: const TextStyle(
                    fontSize: 24
                ),),
                ElevatedButton(onPressed: (){
                  setState(() {
                    time = DateTime.now();
                  });
                }, child: const Text('Get Time'))
              ],
            ),
          ),
        ),
      ),
    );
  }

}

// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);
//   var time = DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Current Date and time',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.yellow,
//       ),
//
//       home: Scaffold(
//         appBar: AppBar(title: Text('Hello World App')),
//         body:  Center(
//           child: Container(
//             width: 200,
//             height: 200,
//             child: Column(
//               //mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text('Current Time: $time' , style: TextStyle(
//                   fontSize: 24
//                 ),),
//                 ElevatedButton(onPressed: (){
//                   //Only for statefull widget, to refresh page
//                   // setState((){})
//                 }, child: Text('Get Time'))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }