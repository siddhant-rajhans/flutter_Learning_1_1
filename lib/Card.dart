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
        appBar: AppBar(title: Text('Hello World App')),

        body: Card(
            elevation: 10,
            shadowColor: Colors.blue,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Hello world.', style: TextStyle(fontSize: 24),),
        )),
      ),
    );
  }
}