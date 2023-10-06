import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter learning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Container'),
        ),
        body: const Center(
          // Center is a widget
          child: // child is a property of Center widget
              Text('Text',
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 251, 251, 251),
                    fontWeight: FontWeight.bold,
                    backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  )),
        ) // Text is a widget

        // Container(
        //   width: 1000,
        //   height: 1000,
        //   color: const Color.fromARGB(255, 205, 220, 255),
        //   child: const Center(
        //     child: Text('Hello', style: TextStyle(fontSize: 50)),
        //   ),
        // ),//
        );
  }
}
