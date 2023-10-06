// Used for overlapping like layers

import 'package:flutter/material.dart';

void main(){runApp(stck());}

class stck extends StatefulWidget {
  const stck({super.key});

  @override
  State<stck> createState() => _stckState();
}

class _stckState extends State<stck> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Stack',
            home: Scaffold(
              appBar: AppBar(
                title:  const Text('Stack'),
              ),
              body:  Container(
                color: Colors.red,
                height: 300,
                width: 300,
                child: Stack(
                  // After wrapping stack with a container, the 2nd child takes the parent container as a reference for Positioned.
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      color: Colors.blue,),
                  // Positioned is used to give spacing between widget
                  Positioned(
                    top: 21,
                    left: 21,
                    right: 21,
                    bottom: 21,
                    child: Container(

                        width: 160,
                        height: 160,
                        color: Colors.yellow,


                      ),
                  )


                  ],

                ),
              )


            ),
    );
  }
}
