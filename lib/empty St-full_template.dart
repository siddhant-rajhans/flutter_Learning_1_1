import 'package:flutter/material.dart';


void main(){
  runApp(const SttFul());
}

class SttFul extends StatefulWidget{
  const SttFul({super.key});

  @override
  State<StatefulWidget> createState() => MyHomie();
}

class MyHomie extends State<SttFul>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Hello World App')),
      body: const Center(child: Text('Hello world.')),
    );
  }
}