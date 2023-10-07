import 'package:flutter/material.dart';
import 'package:learn1_1/Data%20Passing%20between%20screens/profile.dart';
import 'splash.dart';


main(){
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,
      home: SplashScreen()));
}
class HomeApp extends StatelessWidget {
   HomeApp({super.key});
  var InputName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Center(
            child: Text('Main', style: TextStyle(fontWeight: FontWeight.w900),)),
      ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Main_Dashboard', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 34)),
                SizedBox(height: 11,),

                TextField(
                  controller: InputName,
                ),

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProFile(InputName.text.toString() ) ));

                }, child: Text('My Profile'))

              ],
            ),
          ),
        ),
    );
  }
}


