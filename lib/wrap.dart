import 'package:flutter/material.dart';

void main(){
  runApp(wrapper());
}

class wrapper extends StatefulWidget {
  const wrapper({super.key});

  @override
  State<wrapper> createState() => _wrapperState();
}

class _wrapperState extends State<wrapper> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wrapper',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Wrapper'),
              Icon(Icons.music_note),
            ],
          ),

          backgroundColor: Colors.black,
        ),
        body:
            // Wrap is used if we want the element to be in the frame. Does not be scrollable.
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            direction: Axis.vertical,
            // In case of vertical spacing
            spacing: 4,
            //In case of opposite spacing
            runSpacing: 4,
            //To make the content on  center
            //alignment: WrapAlignment.center,
            ////To make the content start and end from edge
            alignment: WrapAlignment.spaceBetween,
            ////To make the content eqally spaced
            // alignment: WrapAlignment.spaceEvenly,
            ////To make the content start and end from uneven
            // alignment: WrapAlignment.spaceAround,


            children: [
              Container(
                width: 70,
                height: 100,
                color: Colors.blue
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.black
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.deepOrange
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.red
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.deepPurpleAccent
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.deepOrange
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.blue
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.black
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.green
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.deepOrange
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.blue
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.black
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.deepOrange
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.red
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.deepPurpleAccent
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.deepOrange
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.blue
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.black
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.green
              ),
              Container(
                  width: 70,
                  height: 100,
                  color: Colors.deepOrange
              ),


            ],
          ),
        ),

      ),
    );
  }
}
