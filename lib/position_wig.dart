import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main(){
  runApp(const Position_Wig());
}

class Position_Wig extends StatefulWidget {
  const Position_Wig({super.key});

  @override
  State<Position_Wig> createState() => _Position_WigState();
}

class _Position_WigState extends State<Position_Wig> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'grey',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Position'),
            backgroundColor: Colors.black,

          ),
          body:
          //Position widget can be used with STACK widget not row/column.
          //reason- stack allows over lapping. Row and columns are fixed in order.
            Container(
              width: double.infinity,
              // width: 300,
              height: double.infinity,
              color: Colors.black,
                child:
                Stack(
                  children: [
                    //Position widget can be used with STACK widget not row/column.
                    //reason- stack allows over lapping. Row and columns are fixed in order.
                    //If no other attribute is given the parent will take the child attribute.
                    Positioned(
                      bottom: 350,
                      right: 150,
                      // top: 10,
                      // left: 50,
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                        // color: Colors.white,
                        child: const Center(child: FaIcon(Icons.music_note_rounded, size: 72,color: Colors.red,)),
                      ),
                    )
                  ],

                ))


      ),
    );
  }
}
