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

    var arrnames = [ 'Ram','Ram','Ram','Ram','Ram','Ram','Ram','Ram','Ram','Ram'];

    return Scaffold(
        appBar: AppBar(
          title: Text("Listview builder + seperater + listTile"),
        ),
        body:

        ListView.separated(itemBuilder: (context, index) {
          //ListTile is a 3 widget premade container
          return ListTile(
            leading: Text('${index+1}'),
            title: Text(arrnames[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );

        },
            // To  print the numbers of the length of array/string
            itemCount: arrnames.length,
            separatorBuilder:(content, index){
              return Divider(height: 40, thickness: 2,);
            }













        //List view seperater [additional, provide the seperater]
        // ListView.separated(itemBuilder: (context, index) {
        //   return Row(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Column(
        //           children: [
        //             Text(arrnames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        //             Padding(
        //               padding: const EdgeInsets.all(8.0),
        //               child: Text(arrnames[index], style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),),
        //             ),
        //           ],
        //         ),
        //       ),
        //
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Text(arrnames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
        //       ),
        //     ],
        //   );
        //
        // },
        //   // To  print the numbers of the length of array/string
        //   itemCount: arrnames.length,
        //   separatorBuilder:(content, index){
        //   return Divider(height: 40, thickness: 2,);
        //   }
         // no item extend in here #itemExtent: 100,
          //to print in horizontal ---
          // scrollDirection: Axis.horizontal,
          //to reverse the array
          // reverse: true,
        )




        // List view builder
        // ListView.builder(itemBuilder: (context, index) {
        //   return Text(arrnames[index], style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
        //
        // },
        //   // To  print the numbers of the length of array/string
        // itemCount: arrnames.length,
        //   itemExtent: 100,
        //   //to print in horizontal ---
        //  // scrollDirection: Axis.horizontal,
        //   //to reverse the array
        // // reverse: true,
        // )



    );
  }

}