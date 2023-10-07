import 'package:flutter/material.dart';
import 'main.dart';
class ProFile extends StatelessWidget {
var InputFromMain = "";

    // Creating constructor of class
   ProFile(this.InputFromMain);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Center(
            child: Text('Profile', style: TextStyle(fontWeight: FontWeight.w900),)),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome, $InputFromMain', style: TextStyle(color: Colors.white ,fontWeight: FontWeight.w900, fontSize: 34)),
              // SizedBox(height: 11,),

              ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeApp() ));

              }, child: Text('Back'))

            ],
          ),
        ),
      ),
    );
  }
}
