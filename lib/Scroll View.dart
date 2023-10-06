import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(expandwidget());
}

class expandwidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expapp",
      debugShowCheckedModeBanner: false,
      home: mainlyHome(),
    );

  }
}
class mainlyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scroll"),
        ),


        // To solve overflowing
        //using 'SingleChildScrollView'

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height:200 ,
                        width: 200,
                        color: Colors.pink,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height:200 ,
                        width: 200,
                        color: Colors.lightGreen,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 11),
                        height:200 ,
                        width: 200,
                        color: Colors.lightGreen,
                      ),
                      Container(
                        margin: EdgeInsets.all(11),
                        height:200 ,
                        width: 200,
                        color: Colors.lightGreen,
                      ),

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height:200 ,

                  color: Colors.red,
                ),Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height:200 ,

                  color: Colors.yellow,
                )
                ,Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height:200 ,

                  color: Colors.blue,
                )
                ,Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height:200 ,

                  color: Colors.lightGreen,
                )
              ],
            ),
          ),
        )

    );
  }

}