import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world project',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Circle Avatar')),
         body: Center(

           child: CircleAvatar(
             child: Column(
               children: [
                 Container(

                     width: 30,
                     height:30,
                     child: Image.asset('assets/images/flutter.png')),
                 Text('Name',style: TextStyle(color: Colors.white, fontSize: 10),),
               ],
             )  ,
            //To use background image
             // backgroundImage: AssetImage('assets/images/flutter.png'),
             backgroundColor: Colors.black,
             maxRadius: 50,


           // child: Container(
           //   width: 200,
           //   height: 200,
           //   child: CircleAvatar(
           //     child: Text('Name',style: TextStyle(color: Colors.white, fontSize: 34),)  ,
           //     backgroundImage: AssetImage('assets/images/flutter.png'),
           //     backgroundColor: Colors.black,
           //     maxRadius: 100,

               //radius: 200,
               //minRadius: 100,
             ),
           ),
         )

//---------------------------------------------------------------------------------------------------

        // Not working
        // CircleAvatar(
        //   child: Container(
        //     width: 150,
        //     height: 150,
        //     child: Column(
        //       children: [
        //       Container(
        //         width: 100,
        //        height: 100,
        //        child: Image.asset('assets/images/pic_1.1.png')),
        //         Text('Sid'),
        //       ],
        //     ),
        //   ),
        //   //radius: double.infinity,
        //  // minRadius: 5,
        //   maxRadius: 150,
        //   //backgroundImage: AssetImage('assets/images/pic_1.1.png'),
        // )
      ,
    );
  }
}