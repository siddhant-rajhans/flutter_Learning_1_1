import 'package:flutter/material.dart';

void main(){
    runApp( const MaterialApp(
      title: 'callBACK',
        debugShowCheckedModeBanner: false,
        home: myapp()));
}


class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => MyappState();
}

class MyappState extends State<myapp> {
  callback(){
    print('Clicked!!!');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Callback',
      debugShowCheckedModeBanner: false,
       home:  Scaffold(appBar: AppBar(
         title: const Text('callback'),
       ),
      body: ElevatedButton(
        onPressed: callback,
        child: Text('Click'),
      )

    ));
  }
}
