import 'package:flutter/material.dart';
import 'package:learn1_1/uis/util.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontFamily: 'FontMain',fontWeight: FontWeight.w900, fontSize: 50, color: Colors.blue),
          displaySmall: TextStyle(fontFamily: 'Font2nd',fontWeight: FontWeight.w500, fontSize: 25)
        )
      ),
      home: Scaffold(

        appBar: AppBar(title: const Text('Custom font')),
        body: Column(
          children: [
            Text('Hello world.',
              //use copy with to extend the theme seted data with customization
              style: Theme.of(context).textTheme.displayLarge!.copyWith(color: Colors.blue),
            ),Text('Hello world.',
              style: Theme.of(context).textTheme.displaySmall!.copyWith(fontWeight: FontWeight.w700, color: Colors.orange ),
            ),const Text('Hello world.',
              style: TextStyle(fontFamily: 'FontMain',fontWeight: FontWeight.w500, fontSize: 50),
            ),const Text('Hello world.',
              style: TextStyle(fontFamily: 'FontMain',fontWeight: FontWeight.w500, fontSize: 25),
            ),const Text('Hello world.',
              style: TextStyle(fontFamily: 'FontMain',fontWeight: FontWeight.w500, fontSize: 50),
            ), Text('Hello world.',
              style: fitcustomui14(),
            ),
          ],
        ),
      ),
    );
  }
}