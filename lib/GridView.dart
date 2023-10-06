import 'package:flutter/material.dart';

void main() => runApp(MaterialApp( home: makeing_Grid(),
  debugShowCheckedModeBanner: false,));

class makeing_Grid extends StatefulWidget{
  @override
  grid_layout createState()  => grid_layout();
}

class grid_layout extends State<makeing_Grid>{
  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.red,
      Colors.orange,
      Colors.yellow,
      Colors.teal,
      Colors.green,
      Colors.grey,
      Colors.blue,
    ];
    return MaterialApp(
        title: 'GridView',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),

        home: Scaffold(
            appBar: AppBar(title: const Text('Day time fetch')),
            body:
                // Grid view builder for same frame and different content like playstore.
            //
            GridView.builder(gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent : 100,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5
            ), itemBuilder: (context, index) {
              return Container(color: arrColor[index],);
            },
              itemCount: arrColor.length,

            )



            
          
          
          
          // Gridview & Gridview Extend
            // Column(
            //   children: [
            //     Container(
            //       height: 200,
            //       child:
            //       // For making grid
            //       GridView.count(
            //         // defines the number of columns
            //         crossAxisCount: 4,
            //         //padding alternative --
            //
            //         //for column
            //         crossAxisSpacing: 11,
            //         //for row
            //         mainAxisSpacing: 11,
            //
            //         children: [
            //           Container(color: arrColor[0],),
            //           Container(color: arrColor[1],),
            //           Container(color: arrColor[2],),
            //           Container(color: arrColor[4],),
            //           Container(color: arrColor[6],),
            //           Container(color: arrColor[5],),
            //           Container(color: arrColor[0],),
            //           Container(color: arrColor[1],),
            //           Container(color: arrColor[2],),
            //           Container(color: arrColor[0],),
            //
            //         ],),
            //     ),
            //
            //     Container(
            //       width: 100,
            //       height: 20,
            //     ),
            //
            //
            //     Container(
            //       height: 400,
            //       child: GridView.extent(
            //             maxCrossAxisExtent: 100,
            //           mainAxisSpacing: 11,
            //           crossAxisSpacing: 11,
            //           children: [
            //             Container(color: arrColor[0],),
            //             Container(color: arrColor[1],),
            //             Container(color: arrColor[2],),
            //             Container(color: arrColor[4],),
            //             Container(color: arrColor[6],),
            //             Container(color: arrColor[5],),
            //             Container(color: arrColor[0],),
            //             Container(color: arrColor[1],),
            //             Container(color: arrColor[2],),
            //             Container(color: arrColor[0],),
            //
            //           ]),
            //     ),
            //
            //   ],
            // ),

        )
    );
  }

}