import 'package:flutter/material.dart';

void main(){
  runApp(szdbox());
}

class szdbox extends StatefulWidget {
  const szdbox({super.key});

  @override
  State<szdbox> createState() => _szdboxState();
}

class _szdboxState extends State<szdbox> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('SizedBox'),
          backgroundColor: Colors.black,

        ),
        body:

        // Can be used to fix the size of a container
        Center(
          child: Wrap(
           direction: Axis.vertical,
            children: [
              SizedBox.square(
                dimension: 100,

                child: ElevatedButton(onPressed: (){

                },child: Text('Click'),
                ) ,
              ),

              SizedBox(
                height: 5,
              ),

              SizedBox.square(
                dimension: 100,
                //SizeBox.expand takes size of the parent
                ////SizeBox.shrink
                // //SizeBox.square
                // width: 100,
                // height: 50,
                child: ElevatedButton(onPressed: (){

                },child: Text('Click'),

                ) ,

              ),
            ],
          ),
        ),





        // // Can be used to fix the size of a container
        // ConstrainedBox(
        //   constraints: const BoxConstraints(
        //     minWidth: 100,
        //     minHeight: 40,
        //     maxHeight: 200,
        //     maxWidth: 300
        //
        //   ),
        //   child: SizedBox.shrink(
        //     //SizeBox.expand takes size of the parent
        //     ////SizeBox.shrink
        //     // //SizeBox.square
        //     // width: 100,
        //     // height: 50,
        //     child: ElevatedButton(onPressed: (){
        //
        //     },child: Text('Click'),
        //
        //     ) ,
        //
        //   ),
        // ),
      ),
    );
  }
}
